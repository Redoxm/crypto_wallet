// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoinDetailModel _$CoinDetailModelFromJson(Map<String, dynamic> json) =>
    _CoinDetailModel(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: ImageData.fromJson(json['image'] as Map<String, dynamic>),
      marketData: MarketData.fromJson(
        json['market_data'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CoinDetailModelToJson(_CoinDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'market_data': instance.marketData,
    };

_ImageData _$ImageDataFromJson(Map<String, dynamic> json) =>
    _ImageData(large: json['large'] as String);

Map<String, dynamic> _$ImageDataToJson(_ImageData instance) =>
    <String, dynamic>{'large': instance.large};

_MarketData _$MarketDataFromJson(Map<String, dynamic> json) => _MarketData(
  currentPrice: (json['current_price'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  marketCap: (json['market_cap'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  totalVolume: (json['total_volume'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  high24h: (json['high_24h'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  low24h: (json['low_24h'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  priceChangePercentage24h: (json['price_change_percentage_24h'] as num?)
      ?.toDouble(),
  circulatingSupply: (json['circulating_supply'] as num?)?.toDouble(),
  totalSupply: (json['total_supply'] as num?)?.toDouble(),
  ath: (json['ath'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  atl: (json['atl'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
);

Map<String, dynamic> _$MarketDataToJson(_MarketData instance) =>
    <String, dynamic>{
      'current_price': instance.currentPrice,
      'market_cap': instance.marketCap,
      'total_volume': instance.totalVolume,
      'high_24h': instance.high24h,
      'low_24h': instance.low24h,
      'price_change_percentage_24h': instance.priceChangePercentage24h,
      'circulating_supply': instance.circulatingSupply,
      'total_supply': instance.totalSupply,
      'ath': instance.ath,
      'atl': instance.atl,
    };

_MarketChartModel _$MarketChartModelFromJson(Map<String, dynamic> json) =>
    _MarketChartModel(
      prices: (json['prices'] as List<dynamic>)
          .map(
            (e) =>
                (e as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
          )
          .toList(),
    );

Map<String, dynamic> _$MarketChartModelToJson(_MarketChartModel instance) =>
    <String, dynamic>{'prices': instance.prices};
