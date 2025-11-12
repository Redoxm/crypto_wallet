import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_model.freezed.dart';
part 'coin_model.g.dart';

@freezed
class CoinModel with _$CoinModel {
  const factory CoinModel({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: 'current_price') required double currentPrice,
    @JsonKey(name: 'market_cap') required double? marketCap,
    @JsonKey(name: 'market_cap_rank') required int? marketCapRank,
    @JsonKey(name: 'price_change_percentage_24h')
    required double? priceChangePercentage24h,
    @JsonKey(name: 'sparkline_in_7d') SparklineData? sparklineIn7d,
  }) = _CoinModel;

  factory CoinModel.fromJson(Map<String, dynamic> json) =>
      _$CoinModelFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class SparklineData with _$SparklineData {
  const factory SparklineData({required List<double> price}) = _SparklineData;

  factory SparklineData.fromJson(Map<String, dynamic> json) =>
      _$SparklineDataFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
