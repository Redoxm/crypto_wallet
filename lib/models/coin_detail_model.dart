import 'package:freezed_annotation/freezed_annotation.dart';
part 'coin_detail_model.freezed.dart';
part 'coin_detail_model.g.dart';

@freezed
class CoinDetailModel with _$CoinDetailModel {
  const factory CoinDetailModel({
    required String id,
    required String symbol,
    required String name,
    required ImageData image,
    @JsonKey(name: 'market_data') required MarketData marketData,
  }) = _CoinDetailModel;

  factory CoinDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CoinDetailModelFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class ImageData with _$ImageData {
  const factory ImageData({required String large}) = _ImageData;

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class MarketData with _$MarketData {
  const factory MarketData({
    @JsonKey(name: 'current_price') required Map<String, double> currentPrice,
    @JsonKey(name: 'market_cap') required Map<String, double> marketCap,
    @JsonKey(name: 'total_volume') required Map<String, double> totalVolume,
    @JsonKey(name: 'high_24h') required Map<String, double> high24h,
    @JsonKey(name: 'low_24h') required Map<String, double> low24h,
    @JsonKey(name: 'price_change_percentage_24h')
    required double? priceChangePercentage24h,
    @JsonKey(name: 'circulating_supply') required double? circulatingSupply,
    @JsonKey(name: 'total_supply') required double? totalSupply,
    @JsonKey(name: 'ath') required Map<String, double> ath,
    @JsonKey(name: 'atl') required Map<String, double> atl,
  }) = _MarketData;

  factory MarketData.fromJson(Map<String, dynamic> json) =>
      _$MarketDataFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class MarketChartModel with _$MarketChartModel {
  const factory MarketChartModel({required List<List<double>> prices}) =
      _MarketChartModel;

  factory MarketChartModel.fromJson(Map<String, dynamic> json) =>
      _$MarketChartModelFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
