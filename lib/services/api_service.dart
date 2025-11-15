import 'package:crypto_wallet/core/network/io_client.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import '../core/constants/api_constants.dart';
import '../models/coin_model.dart';
import '../models/coin_detail_model.dart';
import 'local_storage_service.dart';

class ApiService {
  final DioClient _dioClient;
  final LocalStorageService _localStorage;

  // Cache for API responses (in-memory for quick access)
  final Map<String, CachedResponse> _memoryCache = {};
  static const Duration _cacheDuration = Duration(minutes: 5);

  ApiService(this._dioClient, this._localStorage);

  // Get list of coins with persistent caching
  Future<List<CoinModel>> getCoins() async {
    const cacheKey = 'coins_list';

    // Check in-memory cache first (fastest)
    if (_memoryCache.containsKey(cacheKey) &&
        !_memoryCache[cacheKey]!.isExpired) {
      return _memoryCache[cacheKey]!.data as List<CoinModel>;
    }

    // Check persistent cache (survives app restart)
    if (!_localStorage.isCacheExpired(cacheKey, _cacheDuration)) {
      final cachedData = _localStorage.getCache(cacheKey);
      if (cachedData != null) {
        final jsonList = json.decode(cachedData['data'] as String) as List;
        final coins = jsonList.map((json) => CoinModel.fromJson(json)).toList();

        // Store in memory cache for quick access
        _memoryCache[cacheKey] = CachedResponse(
          data: coins,
          timestamp: DateTime.now(),
        );

        return coins;
      }
    }

    try {
      final response = await _dioClient.get(
        ApiConstants.coinsMarkets,
        queryParameters: {
          'vs_currency': ApiConstants.vsCurrency,
          'order': ApiConstants.orderBy,
          'per_page': ApiConstants.perPage,
          'page': 1,
          'sparkline': true,
          'price_change_percentage': '24h',
        },
      );

      final List<dynamic> data = response.data;
      final coins = data.map((json) => CoinModel.fromJson(json)).toList();

      // Save to both memory and persistent cache
      _memoryCache[cacheKey] = CachedResponse(
        data: coins,
        timestamp: DateTime.now(),
      );
      await _localStorage.saveCache(cacheKey, json.encode(data));

      return coins;
    } on DioException catch (e) {
      // If network fails, try persistent cache even if expired
      final cachedData = _localStorage.getCache(cacheKey);
      if (cachedData != null) {
        final jsonList = json.decode(cachedData['data'] as String) as List;
        return jsonList.map((json) => CoinModel.fromJson(json)).toList();
      }

      // If no cache at all, try memory cache even if expired
      if (_memoryCache.containsKey(cacheKey)) {
        return _memoryCache[cacheKey]!.data as List<CoinModel>;
      }

      throw _handleError(e);
    }
  }

  // Get coin details with persistent caching
  Future<CoinDetailModel> getCoinDetail(String coinId) async {
    final cacheKey = 'coin_detail_$coinId';

    // Check in-memory cache first
    if (_memoryCache.containsKey(cacheKey) &&
        !_memoryCache[cacheKey]!.isExpired) {
      return _memoryCache[cacheKey]!.data as CoinDetailModel;
    }

    // Check persistent cache
    if (!_localStorage.isCacheExpired(cacheKey, _cacheDuration)) {
      final cachedData = _localStorage.getCache(cacheKey);
      if (cachedData != null) {
        final coinDetail = CoinDetailModel.fromJson(
          json.decode(cachedData['data'] as String),
        );
        _memoryCache[cacheKey] = CachedResponse(
          data: coinDetail,
          timestamp: DateTime.now(),
        );
        return coinDetail;
      }
    }

    try {
      final response = await _dioClient.get(
        '${ApiConstants.coinDetail}/$coinId',
        queryParameters: {
          'localization': false,
          'tickers': false,
          'market_data': true,
          'community_data': false,
          'developer_data': false,
        },
      );

      final coinDetail = CoinDetailModel.fromJson(response.data);

      // Save to both caches
      _memoryCache[cacheKey] = CachedResponse(
        data: coinDetail,
        timestamp: DateTime.now(),
      );
      await _localStorage.saveCache(cacheKey, json.encode(response.data));

      return coinDetail;
    } on DioException catch (e) {
      // If network fails, try persistent cache even if expired
      final cachedData = _localStorage.getCache(cacheKey);
      if (cachedData != null) {
        return CoinDetailModel.fromJson(
          json.decode(cachedData['data'] as String),
        );
      }

      // Try memory cache
      if (_memoryCache.containsKey(cacheKey)) {
        return _memoryCache[cacheKey]!.data as CoinDetailModel;
      }

      throw _handleError(e);
    }
  }

  // Get market chart with persistent caching
  Future<MarketChartModel> getMarketChart(String coinId) async {
    final cacheKey = 'market_chart_$coinId';

    // Check in-memory cache first
    if (_memoryCache.containsKey(cacheKey) &&
        !_memoryCache[cacheKey]!.isExpired) {
      return _memoryCache[cacheKey]!.data as MarketChartModel;
    }

    // Check persistent cache
    if (!_localStorage.isCacheExpired(cacheKey, _cacheDuration)) {
      final cachedData = _localStorage.getCache(cacheKey);
      if (cachedData != null) {
        final chartData = MarketChartModel.fromJson(
          json.decode(cachedData['data'] as String),
        );
        _memoryCache[cacheKey] = CachedResponse(
          data: chartData,
          timestamp: DateTime.now(),
        );
        return chartData;
      }
    }

    try {
      final response = await _dioClient.get(
        '${ApiConstants.coinDetail}/$coinId${ApiConstants.marketChart}',
        queryParameters: {'vs_currency': ApiConstants.vsCurrency, 'days': 7},
      );

      final chartData = MarketChartModel.fromJson(response.data);

      // Save to both caches
      _memoryCache[cacheKey] = CachedResponse(
        data: chartData,
        timestamp: DateTime.now(),
      );
      await _localStorage.saveCache(cacheKey, json.encode(response.data));

      return chartData;
    } on DioException catch (e) {
      // If network fails, try persistent cache even if expired
      final cachedData = _localStorage.getCache(cacheKey);
      if (cachedData != null) {
        return MarketChartModel.fromJson(
          json.decode(cachedData['data'] as String),
        );
      }

      // Try memory cache
      if (_memoryCache.containsKey(cacheKey)) {
        return _memoryCache[cacheKey]!.data as MarketChartModel;
      }

      throw _handleError(e);
    }
  }

  // Clear cache manually if needed
  void clearCache() {
    _memoryCache.clear();
    _localStorage.clearAllCache();
  }

  // Handle errors with better messages
  String _handleError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout) {
      return 'Connection timeout. Please check your internet.';
    } else if (e.type == DioExceptionType.connectionError) {
      return 'No internet connection. Showing cached data if available.';
    } else if (e.type == DioExceptionType.sendTimeout) {
      return 'Request timeout. Please try again.';
    } else if (e.type == DioExceptionType.receiveTimeout) {
      return 'Server took too long to respond. Please try again.';
    } else if (e.response?.statusCode == 429) {
      return 'Too many requests. Please try again later.';
    } else if (e.response?.statusCode == 404) {
      return 'Coin not found.';
    } else if (e.response?.statusCode == 503) {
      return 'Service temporarily unavailable. Please try again.';
    } else {
      return 'Failed to load data. Please try again.';
    }
  }
}

// Cache response helper class
class CachedResponse {
  final dynamic data;
  final DateTime timestamp;

  CachedResponse({required this.data, required this.timestamp});

  bool get isExpired {
    return DateTime.now().difference(timestamp) > ApiService._cacheDuration;
  }
}
