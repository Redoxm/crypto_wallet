// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoinDetailModel {

 String get id; String get symbol; String get name; ImageData get image;@JsonKey(name: 'market_data') MarketData get marketData;
/// Create a copy of CoinDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinDetailModelCopyWith<CoinDetailModel> get copyWith => _$CoinDetailModelCopyWithImpl<CoinDetailModel>(this as CoinDetailModel, _$identity);

  /// Serializes this CoinDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.marketData, marketData) || other.marketData == marketData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbol,name,image,marketData);

@override
String toString() {
  return 'CoinDetailModel(id: $id, symbol: $symbol, name: $name, image: $image, marketData: $marketData)';
}


}

/// @nodoc
abstract mixin class $CoinDetailModelCopyWith<$Res>  {
  factory $CoinDetailModelCopyWith(CoinDetailModel value, $Res Function(CoinDetailModel) _then) = _$CoinDetailModelCopyWithImpl;
@useResult
$Res call({
 String id, String symbol, String name, ImageData image,@JsonKey(name: 'market_data') MarketData marketData
});


$ImageDataCopyWith<$Res> get image;$MarketDataCopyWith<$Res> get marketData;

}
/// @nodoc
class _$CoinDetailModelCopyWithImpl<$Res>
    implements $CoinDetailModelCopyWith<$Res> {
  _$CoinDetailModelCopyWithImpl(this._self, this._then);

  final CoinDetailModel _self;
  final $Res Function(CoinDetailModel) _then;

/// Create a copy of CoinDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? symbol = null,Object? name = null,Object? image = null,Object? marketData = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ImageData,marketData: null == marketData ? _self.marketData : marketData // ignore: cast_nullable_to_non_nullable
as MarketData,
  ));
}
/// Create a copy of CoinDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataCopyWith<$Res> get image {
  
  return $ImageDataCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of CoinDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketDataCopyWith<$Res> get marketData {
  
  return $MarketDataCopyWith<$Res>(_self.marketData, (value) {
    return _then(_self.copyWith(marketData: value));
  });
}
}


/// Adds pattern-matching-related methods to [CoinDetailModel].
extension CoinDetailModelPatterns on CoinDetailModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoinDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoinDetailModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoinDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _CoinDetailModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoinDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _CoinDetailModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String symbol,  String name,  ImageData image, @JsonKey(name: 'market_data')  MarketData marketData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoinDetailModel() when $default != null:
return $default(_that.id,_that.symbol,_that.name,_that.image,_that.marketData);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String symbol,  String name,  ImageData image, @JsonKey(name: 'market_data')  MarketData marketData)  $default,) {final _that = this;
switch (_that) {
case _CoinDetailModel():
return $default(_that.id,_that.symbol,_that.name,_that.image,_that.marketData);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String symbol,  String name,  ImageData image, @JsonKey(name: 'market_data')  MarketData marketData)?  $default,) {final _that = this;
switch (_that) {
case _CoinDetailModel() when $default != null:
return $default(_that.id,_that.symbol,_that.name,_that.image,_that.marketData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoinDetailModel implements CoinDetailModel {
  const _CoinDetailModel({required this.id, required this.symbol, required this.name, required this.image, @JsonKey(name: 'market_data') required this.marketData});
  factory _CoinDetailModel.fromJson(Map<String, dynamic> json) => _$CoinDetailModelFromJson(json);

@override final  String id;
@override final  String symbol;
@override final  String name;
@override final  ImageData image;
@override@JsonKey(name: 'market_data') final  MarketData marketData;

/// Create a copy of CoinDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoinDetailModelCopyWith<_CoinDetailModel> get copyWith => __$CoinDetailModelCopyWithImpl<_CoinDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoinDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoinDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.marketData, marketData) || other.marketData == marketData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbol,name,image,marketData);

@override
String toString() {
  return 'CoinDetailModel(id: $id, symbol: $symbol, name: $name, image: $image, marketData: $marketData)';
}


}

/// @nodoc
abstract mixin class _$CoinDetailModelCopyWith<$Res> implements $CoinDetailModelCopyWith<$Res> {
  factory _$CoinDetailModelCopyWith(_CoinDetailModel value, $Res Function(_CoinDetailModel) _then) = __$CoinDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String symbol, String name, ImageData image,@JsonKey(name: 'market_data') MarketData marketData
});


@override $ImageDataCopyWith<$Res> get image;@override $MarketDataCopyWith<$Res> get marketData;

}
/// @nodoc
class __$CoinDetailModelCopyWithImpl<$Res>
    implements _$CoinDetailModelCopyWith<$Res> {
  __$CoinDetailModelCopyWithImpl(this._self, this._then);

  final _CoinDetailModel _self;
  final $Res Function(_CoinDetailModel) _then;

/// Create a copy of CoinDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? symbol = null,Object? name = null,Object? image = null,Object? marketData = null,}) {
  return _then(_CoinDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ImageData,marketData: null == marketData ? _self.marketData : marketData // ignore: cast_nullable_to_non_nullable
as MarketData,
  ));
}

/// Create a copy of CoinDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageDataCopyWith<$Res> get image {
  
  return $ImageDataCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of CoinDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketDataCopyWith<$Res> get marketData {
  
  return $MarketDataCopyWith<$Res>(_self.marketData, (value) {
    return _then(_self.copyWith(marketData: value));
  });
}
}


/// @nodoc
mixin _$ImageData {

 String get large;
/// Create a copy of ImageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageDataCopyWith<ImageData> get copyWith => _$ImageDataCopyWithImpl<ImageData>(this as ImageData, _$identity);

  /// Serializes this ImageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageData&&(identical(other.large, large) || other.large == large));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,large);

@override
String toString() {
  return 'ImageData(large: $large)';
}


}

/// @nodoc
abstract mixin class $ImageDataCopyWith<$Res>  {
  factory $ImageDataCopyWith(ImageData value, $Res Function(ImageData) _then) = _$ImageDataCopyWithImpl;
@useResult
$Res call({
 String large
});




}
/// @nodoc
class _$ImageDataCopyWithImpl<$Res>
    implements $ImageDataCopyWith<$Res> {
  _$ImageDataCopyWithImpl(this._self, this._then);

  final ImageData _self;
  final $Res Function(ImageData) _then;

/// Create a copy of ImageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? large = null,}) {
  return _then(_self.copyWith(
large: null == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageData].
extension ImageDataPatterns on ImageData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageData value)  $default,){
final _that = this;
switch (_that) {
case _ImageData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageData value)?  $default,){
final _that = this;
switch (_that) {
case _ImageData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String large)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageData() when $default != null:
return $default(_that.large);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String large)  $default,) {final _that = this;
switch (_that) {
case _ImageData():
return $default(_that.large);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String large)?  $default,) {final _that = this;
switch (_that) {
case _ImageData() when $default != null:
return $default(_that.large);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImageData implements ImageData {
  const _ImageData({required this.large});
  factory _ImageData.fromJson(Map<String, dynamic> json) => _$ImageDataFromJson(json);

@override final  String large;

/// Create a copy of ImageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageDataCopyWith<_ImageData> get copyWith => __$ImageDataCopyWithImpl<_ImageData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageData&&(identical(other.large, large) || other.large == large));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,large);

@override
String toString() {
  return 'ImageData(large: $large)';
}


}

/// @nodoc
abstract mixin class _$ImageDataCopyWith<$Res> implements $ImageDataCopyWith<$Res> {
  factory _$ImageDataCopyWith(_ImageData value, $Res Function(_ImageData) _then) = __$ImageDataCopyWithImpl;
@override @useResult
$Res call({
 String large
});




}
/// @nodoc
class __$ImageDataCopyWithImpl<$Res>
    implements _$ImageDataCopyWith<$Res> {
  __$ImageDataCopyWithImpl(this._self, this._then);

  final _ImageData _self;
  final $Res Function(_ImageData) _then;

/// Create a copy of ImageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? large = null,}) {
  return _then(_ImageData(
large: null == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MarketData {

@JsonKey(name: 'current_price') Map<String, double> get currentPrice;@JsonKey(name: 'market_cap') Map<String, double> get marketCap;@JsonKey(name: 'total_volume') Map<String, double> get totalVolume;@JsonKey(name: 'high_24h') Map<String, double> get high24h;@JsonKey(name: 'low_24h') Map<String, double> get low24h;@JsonKey(name: 'price_change_percentage_24h') double? get priceChangePercentage24h;@JsonKey(name: 'circulating_supply') double? get circulatingSupply;@JsonKey(name: 'total_supply') double? get totalSupply;@JsonKey(name: 'ath') Map<String, double> get ath;@JsonKey(name: 'atl') Map<String, double> get atl;
/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketDataCopyWith<MarketData> get copyWith => _$MarketDataCopyWithImpl<MarketData>(this as MarketData, _$identity);

  /// Serializes this MarketData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketData&&const DeepCollectionEquality().equals(other.currentPrice, currentPrice)&&const DeepCollectionEquality().equals(other.marketCap, marketCap)&&const DeepCollectionEquality().equals(other.totalVolume, totalVolume)&&const DeepCollectionEquality().equals(other.high24h, high24h)&&const DeepCollectionEquality().equals(other.low24h, low24h)&&(identical(other.priceChangePercentage24h, priceChangePercentage24h) || other.priceChangePercentage24h == priceChangePercentage24h)&&(identical(other.circulatingSupply, circulatingSupply) || other.circulatingSupply == circulatingSupply)&&(identical(other.totalSupply, totalSupply) || other.totalSupply == totalSupply)&&const DeepCollectionEquality().equals(other.ath, ath)&&const DeepCollectionEquality().equals(other.atl, atl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currentPrice),const DeepCollectionEquality().hash(marketCap),const DeepCollectionEquality().hash(totalVolume),const DeepCollectionEquality().hash(high24h),const DeepCollectionEquality().hash(low24h),priceChangePercentage24h,circulatingSupply,totalSupply,const DeepCollectionEquality().hash(ath),const DeepCollectionEquality().hash(atl));

@override
String toString() {
  return 'MarketData(currentPrice: $currentPrice, marketCap: $marketCap, totalVolume: $totalVolume, high24h: $high24h, low24h: $low24h, priceChangePercentage24h: $priceChangePercentage24h, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, ath: $ath, atl: $atl)';
}


}

/// @nodoc
abstract mixin class $MarketDataCopyWith<$Res>  {
  factory $MarketDataCopyWith(MarketData value, $Res Function(MarketData) _then) = _$MarketDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_price') Map<String, double> currentPrice,@JsonKey(name: 'market_cap') Map<String, double> marketCap,@JsonKey(name: 'total_volume') Map<String, double> totalVolume,@JsonKey(name: 'high_24h') Map<String, double> high24h,@JsonKey(name: 'low_24h') Map<String, double> low24h,@JsonKey(name: 'price_change_percentage_24h') double? priceChangePercentage24h,@JsonKey(name: 'circulating_supply') double? circulatingSupply,@JsonKey(name: 'total_supply') double? totalSupply,@JsonKey(name: 'ath') Map<String, double> ath,@JsonKey(name: 'atl') Map<String, double> atl
});




}
/// @nodoc
class _$MarketDataCopyWithImpl<$Res>
    implements $MarketDataCopyWith<$Res> {
  _$MarketDataCopyWithImpl(this._self, this._then);

  final MarketData _self;
  final $Res Function(MarketData) _then;

/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPrice = null,Object? marketCap = null,Object? totalVolume = null,Object? high24h = null,Object? low24h = null,Object? priceChangePercentage24h = freezed,Object? circulatingSupply = freezed,Object? totalSupply = freezed,Object? ath = null,Object? atl = null,}) {
  return _then(_self.copyWith(
currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as Map<String, double>,marketCap: null == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as Map<String, double>,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as Map<String, double>,high24h: null == high24h ? _self.high24h : high24h // ignore: cast_nullable_to_non_nullable
as Map<String, double>,low24h: null == low24h ? _self.low24h : low24h // ignore: cast_nullable_to_non_nullable
as Map<String, double>,priceChangePercentage24h: freezed == priceChangePercentage24h ? _self.priceChangePercentage24h : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
as double?,circulatingSupply: freezed == circulatingSupply ? _self.circulatingSupply : circulatingSupply // ignore: cast_nullable_to_non_nullable
as double?,totalSupply: freezed == totalSupply ? _self.totalSupply : totalSupply // ignore: cast_nullable_to_non_nullable
as double?,ath: null == ath ? _self.ath : ath // ignore: cast_nullable_to_non_nullable
as Map<String, double>,atl: null == atl ? _self.atl : atl // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketData].
extension MarketDataPatterns on MarketData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketData value)  $default,){
final _that = this;
switch (_that) {
case _MarketData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketData value)?  $default,){
final _that = this;
switch (_that) {
case _MarketData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_price')  Map<String, double> currentPrice, @JsonKey(name: 'market_cap')  Map<String, double> marketCap, @JsonKey(name: 'total_volume')  Map<String, double> totalVolume, @JsonKey(name: 'high_24h')  Map<String, double> high24h, @JsonKey(name: 'low_24h')  Map<String, double> low24h, @JsonKey(name: 'price_change_percentage_24h')  double? priceChangePercentage24h, @JsonKey(name: 'circulating_supply')  double? circulatingSupply, @JsonKey(name: 'total_supply')  double? totalSupply, @JsonKey(name: 'ath')  Map<String, double> ath, @JsonKey(name: 'atl')  Map<String, double> atl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketData() when $default != null:
return $default(_that.currentPrice,_that.marketCap,_that.totalVolume,_that.high24h,_that.low24h,_that.priceChangePercentage24h,_that.circulatingSupply,_that.totalSupply,_that.ath,_that.atl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_price')  Map<String, double> currentPrice, @JsonKey(name: 'market_cap')  Map<String, double> marketCap, @JsonKey(name: 'total_volume')  Map<String, double> totalVolume, @JsonKey(name: 'high_24h')  Map<String, double> high24h, @JsonKey(name: 'low_24h')  Map<String, double> low24h, @JsonKey(name: 'price_change_percentage_24h')  double? priceChangePercentage24h, @JsonKey(name: 'circulating_supply')  double? circulatingSupply, @JsonKey(name: 'total_supply')  double? totalSupply, @JsonKey(name: 'ath')  Map<String, double> ath, @JsonKey(name: 'atl')  Map<String, double> atl)  $default,) {final _that = this;
switch (_that) {
case _MarketData():
return $default(_that.currentPrice,_that.marketCap,_that.totalVolume,_that.high24h,_that.low24h,_that.priceChangePercentage24h,_that.circulatingSupply,_that.totalSupply,_that.ath,_that.atl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_price')  Map<String, double> currentPrice, @JsonKey(name: 'market_cap')  Map<String, double> marketCap, @JsonKey(name: 'total_volume')  Map<String, double> totalVolume, @JsonKey(name: 'high_24h')  Map<String, double> high24h, @JsonKey(name: 'low_24h')  Map<String, double> low24h, @JsonKey(name: 'price_change_percentage_24h')  double? priceChangePercentage24h, @JsonKey(name: 'circulating_supply')  double? circulatingSupply, @JsonKey(name: 'total_supply')  double? totalSupply, @JsonKey(name: 'ath')  Map<String, double> ath, @JsonKey(name: 'atl')  Map<String, double> atl)?  $default,) {final _that = this;
switch (_that) {
case _MarketData() when $default != null:
return $default(_that.currentPrice,_that.marketCap,_that.totalVolume,_that.high24h,_that.low24h,_that.priceChangePercentage24h,_that.circulatingSupply,_that.totalSupply,_that.ath,_that.atl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketData implements MarketData {
  const _MarketData({@JsonKey(name: 'current_price') required final  Map<String, double> currentPrice, @JsonKey(name: 'market_cap') required final  Map<String, double> marketCap, @JsonKey(name: 'total_volume') required final  Map<String, double> totalVolume, @JsonKey(name: 'high_24h') required final  Map<String, double> high24h, @JsonKey(name: 'low_24h') required final  Map<String, double> low24h, @JsonKey(name: 'price_change_percentage_24h') required this.priceChangePercentage24h, @JsonKey(name: 'circulating_supply') required this.circulatingSupply, @JsonKey(name: 'total_supply') required this.totalSupply, @JsonKey(name: 'ath') required final  Map<String, double> ath, @JsonKey(name: 'atl') required final  Map<String, double> atl}): _currentPrice = currentPrice,_marketCap = marketCap,_totalVolume = totalVolume,_high24h = high24h,_low24h = low24h,_ath = ath,_atl = atl;
  factory _MarketData.fromJson(Map<String, dynamic> json) => _$MarketDataFromJson(json);

 final  Map<String, double> _currentPrice;
@override@JsonKey(name: 'current_price') Map<String, double> get currentPrice {
  if (_currentPrice is EqualUnmodifiableMapView) return _currentPrice;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_currentPrice);
}

 final  Map<String, double> _marketCap;
@override@JsonKey(name: 'market_cap') Map<String, double> get marketCap {
  if (_marketCap is EqualUnmodifiableMapView) return _marketCap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_marketCap);
}

 final  Map<String, double> _totalVolume;
@override@JsonKey(name: 'total_volume') Map<String, double> get totalVolume {
  if (_totalVolume is EqualUnmodifiableMapView) return _totalVolume;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_totalVolume);
}

 final  Map<String, double> _high24h;
@override@JsonKey(name: 'high_24h') Map<String, double> get high24h {
  if (_high24h is EqualUnmodifiableMapView) return _high24h;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_high24h);
}

 final  Map<String, double> _low24h;
@override@JsonKey(name: 'low_24h') Map<String, double> get low24h {
  if (_low24h is EqualUnmodifiableMapView) return _low24h;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_low24h);
}

@override@JsonKey(name: 'price_change_percentage_24h') final  double? priceChangePercentage24h;
@override@JsonKey(name: 'circulating_supply') final  double? circulatingSupply;
@override@JsonKey(name: 'total_supply') final  double? totalSupply;
 final  Map<String, double> _ath;
@override@JsonKey(name: 'ath') Map<String, double> get ath {
  if (_ath is EqualUnmodifiableMapView) return _ath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_ath);
}

 final  Map<String, double> _atl;
@override@JsonKey(name: 'atl') Map<String, double> get atl {
  if (_atl is EqualUnmodifiableMapView) return _atl;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_atl);
}


/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketDataCopyWith<_MarketData> get copyWith => __$MarketDataCopyWithImpl<_MarketData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketData&&const DeepCollectionEquality().equals(other._currentPrice, _currentPrice)&&const DeepCollectionEquality().equals(other._marketCap, _marketCap)&&const DeepCollectionEquality().equals(other._totalVolume, _totalVolume)&&const DeepCollectionEquality().equals(other._high24h, _high24h)&&const DeepCollectionEquality().equals(other._low24h, _low24h)&&(identical(other.priceChangePercentage24h, priceChangePercentage24h) || other.priceChangePercentage24h == priceChangePercentage24h)&&(identical(other.circulatingSupply, circulatingSupply) || other.circulatingSupply == circulatingSupply)&&(identical(other.totalSupply, totalSupply) || other.totalSupply == totalSupply)&&const DeepCollectionEquality().equals(other._ath, _ath)&&const DeepCollectionEquality().equals(other._atl, _atl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currentPrice),const DeepCollectionEquality().hash(_marketCap),const DeepCollectionEquality().hash(_totalVolume),const DeepCollectionEquality().hash(_high24h),const DeepCollectionEquality().hash(_low24h),priceChangePercentage24h,circulatingSupply,totalSupply,const DeepCollectionEquality().hash(_ath),const DeepCollectionEquality().hash(_atl));

@override
String toString() {
  return 'MarketData(currentPrice: $currentPrice, marketCap: $marketCap, totalVolume: $totalVolume, high24h: $high24h, low24h: $low24h, priceChangePercentage24h: $priceChangePercentage24h, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, ath: $ath, atl: $atl)';
}


}

/// @nodoc
abstract mixin class _$MarketDataCopyWith<$Res> implements $MarketDataCopyWith<$Res> {
  factory _$MarketDataCopyWith(_MarketData value, $Res Function(_MarketData) _then) = __$MarketDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_price') Map<String, double> currentPrice,@JsonKey(name: 'market_cap') Map<String, double> marketCap,@JsonKey(name: 'total_volume') Map<String, double> totalVolume,@JsonKey(name: 'high_24h') Map<String, double> high24h,@JsonKey(name: 'low_24h') Map<String, double> low24h,@JsonKey(name: 'price_change_percentage_24h') double? priceChangePercentage24h,@JsonKey(name: 'circulating_supply') double? circulatingSupply,@JsonKey(name: 'total_supply') double? totalSupply,@JsonKey(name: 'ath') Map<String, double> ath,@JsonKey(name: 'atl') Map<String, double> atl
});




}
/// @nodoc
class __$MarketDataCopyWithImpl<$Res>
    implements _$MarketDataCopyWith<$Res> {
  __$MarketDataCopyWithImpl(this._self, this._then);

  final _MarketData _self;
  final $Res Function(_MarketData) _then;

/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPrice = null,Object? marketCap = null,Object? totalVolume = null,Object? high24h = null,Object? low24h = null,Object? priceChangePercentage24h = freezed,Object? circulatingSupply = freezed,Object? totalSupply = freezed,Object? ath = null,Object? atl = null,}) {
  return _then(_MarketData(
currentPrice: null == currentPrice ? _self._currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as Map<String, double>,marketCap: null == marketCap ? _self._marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as Map<String, double>,totalVolume: null == totalVolume ? _self._totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as Map<String, double>,high24h: null == high24h ? _self._high24h : high24h // ignore: cast_nullable_to_non_nullable
as Map<String, double>,low24h: null == low24h ? _self._low24h : low24h // ignore: cast_nullable_to_non_nullable
as Map<String, double>,priceChangePercentage24h: freezed == priceChangePercentage24h ? _self.priceChangePercentage24h : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
as double?,circulatingSupply: freezed == circulatingSupply ? _self.circulatingSupply : circulatingSupply // ignore: cast_nullable_to_non_nullable
as double?,totalSupply: freezed == totalSupply ? _self.totalSupply : totalSupply // ignore: cast_nullable_to_non_nullable
as double?,ath: null == ath ? _self._ath : ath // ignore: cast_nullable_to_non_nullable
as Map<String, double>,atl: null == atl ? _self._atl : atl // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}


}


/// @nodoc
mixin _$MarketChartModel {

 List<List<double>> get prices;
/// Create a copy of MarketChartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketChartModelCopyWith<MarketChartModel> get copyWith => _$MarketChartModelCopyWithImpl<MarketChartModel>(this as MarketChartModel, _$identity);

  /// Serializes this MarketChartModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketChartModel&&const DeepCollectionEquality().equals(other.prices, prices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(prices));

@override
String toString() {
  return 'MarketChartModel(prices: $prices)';
}


}

/// @nodoc
abstract mixin class $MarketChartModelCopyWith<$Res>  {
  factory $MarketChartModelCopyWith(MarketChartModel value, $Res Function(MarketChartModel) _then) = _$MarketChartModelCopyWithImpl;
@useResult
$Res call({
 List<List<double>> prices
});




}
/// @nodoc
class _$MarketChartModelCopyWithImpl<$Res>
    implements $MarketChartModelCopyWith<$Res> {
  _$MarketChartModelCopyWithImpl(this._self, this._then);

  final MarketChartModel _self;
  final $Res Function(MarketChartModel) _then;

/// Create a copy of MarketChartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prices = null,}) {
  return _then(_self.copyWith(
prices: null == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as List<List<double>>,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketChartModel].
extension MarketChartModelPatterns on MarketChartModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketChartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketChartModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketChartModel value)  $default,){
final _that = this;
switch (_that) {
case _MarketChartModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketChartModel value)?  $default,){
final _that = this;
switch (_that) {
case _MarketChartModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<List<double>> prices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketChartModel() when $default != null:
return $default(_that.prices);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<List<double>> prices)  $default,) {final _that = this;
switch (_that) {
case _MarketChartModel():
return $default(_that.prices);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<List<double>> prices)?  $default,) {final _that = this;
switch (_that) {
case _MarketChartModel() when $default != null:
return $default(_that.prices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketChartModel implements MarketChartModel {
  const _MarketChartModel({required final  List<List<double>> prices}): _prices = prices;
  factory _MarketChartModel.fromJson(Map<String, dynamic> json) => _$MarketChartModelFromJson(json);

 final  List<List<double>> _prices;
@override List<List<double>> get prices {
  if (_prices is EqualUnmodifiableListView) return _prices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prices);
}


/// Create a copy of MarketChartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketChartModelCopyWith<_MarketChartModel> get copyWith => __$MarketChartModelCopyWithImpl<_MarketChartModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketChartModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketChartModel&&const DeepCollectionEquality().equals(other._prices, _prices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_prices));

@override
String toString() {
  return 'MarketChartModel(prices: $prices)';
}


}

/// @nodoc
abstract mixin class _$MarketChartModelCopyWith<$Res> implements $MarketChartModelCopyWith<$Res> {
  factory _$MarketChartModelCopyWith(_MarketChartModel value, $Res Function(_MarketChartModel) _then) = __$MarketChartModelCopyWithImpl;
@override @useResult
$Res call({
 List<List<double>> prices
});




}
/// @nodoc
class __$MarketChartModelCopyWithImpl<$Res>
    implements _$MarketChartModelCopyWith<$Res> {
  __$MarketChartModelCopyWithImpl(this._self, this._then);

  final _MarketChartModel _self;
  final $Res Function(_MarketChartModel) _then;

/// Create a copy of MarketChartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prices = null,}) {
  return _then(_MarketChartModel(
prices: null == prices ? _self._prices : prices // ignore: cast_nullable_to_non_nullable
as List<List<double>>,
  ));
}


}

// dart format on
