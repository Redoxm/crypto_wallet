// lib/core/constants/api_constants.dart

class ApiConstants {
  // Base URL
  static const String baseUrl = 'https://api.coingecko.com/api/v3';

  // Endpoints
  static const String coinsMarkets = '/coins/markets';
  static const String coinDetail = '/coins';
  static const String marketChart = '/market_chart';

  // Parameters
  static const String vsCurrency = 'usd';
  static const int perPage = 50;
  static const String orderBy = 'market_cap_desc';

  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
}
