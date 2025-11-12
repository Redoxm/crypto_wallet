import 'package:crypto_wallet/core/network/io_client.dart';
import 'package:dio/dio.dart';
import '../core/constants/api_constants.dart';
import '../models/coin_model.dart';
import '../models/coin_detail_model.dart';

class ApiService {
  final DioClient _dioClient;

  // Cache for API responses
  final Map<String, CachedResponse> _cache = {};
  static const Duration _cacheDuration = Duration(minutes: 5);

  ApiService(this._dioClient); // Get list of coins with caching
  Future<List<CoinModel>> getCoins() async {
    const cacheKey = 'coins_list';

    // Try to get from cache first
    if (_cache.containsKey(cacheKey) && !_cache[cacheKey]!.isExpired) {
      return _cache[cacheKey]!.data as List<CoinModel>;
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

      // Cache the response
      _cache[cacheKey] = CachedResponse(data: coins, timestamp: DateTime.now());

      return coins;
    } on DioException catch (e) {
      // If network fails, try to return cached data even if expired
      if (_cache.containsKey(cacheKey)) {
        return _cache[cacheKey]!.data as List<CoinModel>;
      }
      throw _handleError(e);
    }
  }

  // Get coin details with caching
  Future<CoinDetailModel> getCoinDetail(String coinId) async {
    final cacheKey = 'coin_detail_$coinId';

    // Try to get from cache first
    if (_cache.containsKey(cacheKey) && !_cache[cacheKey]!.isExpired) {
      return _cache[cacheKey]!.data as CoinDetailModel;
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

      // Cache the response
      _cache[cacheKey] = CachedResponse(
        data: coinDetail,
        timestamp: DateTime.now(),
      );

      return coinDetail;
    } on DioException catch (e) {
      // If network fails, try to return cached data even if expired
      if (_cache.containsKey(cacheKey)) {
        return _cache[cacheKey]!.data as CoinDetailModel;
      }
      throw _handleError(e);
    }
  }

  // Get market chart with caching
  Future<MarketChartModel> getMarketChart(String coinId) async {
    final cacheKey = 'market_chart_$coinId';

    // Try to get from cache first
    if (_cache.containsKey(cacheKey) && !_cache[cacheKey]!.isExpired) {
      return _cache[cacheKey]!.data as MarketChartModel;
    }

    try {
      final response = await _dioClient.get(
        '${ApiConstants.coinDetail}/$coinId${ApiConstants.marketChart}',
        queryParameters: {'vs_currency': ApiConstants.vsCurrency, 'days': 7},
      );

      final chartData = MarketChartModel.fromJson(response.data);

      // Cache the response
      _cache[cacheKey] = CachedResponse(
        data: chartData,
        timestamp: DateTime.now(),
      );

      return chartData;
    } on DioException catch (e) {
      // If network fails, try to return cached data even if expired
      if (_cache.containsKey(cacheKey)) {
        return _cache[cacheKey]!.data as MarketChartModel;
      }
      throw _handleError(e);
    }
  }

  // Clear cache manually if needed
  void clearCache() {
    _cache.clear();
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
