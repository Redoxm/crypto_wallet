// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoinModel {

 String get id; String get symbol; String get name; String get image;@JsonKey(name: 'current_price') double get currentPrice;@JsonKey(name: 'market_cap') double? get marketCap;@JsonKey(name: 'market_cap_rank') int? get marketCapRank;@JsonKey(name: 'price_change_percentage_24h') double? get priceChangePercentage24h;@JsonKey(name: 'sparkline_in_7d') SparklineData? get sparklineIn7d;
/// Create a copy of CoinModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinModelCopyWith<CoinModel> get copyWith => _$CoinModelCopyWithImpl<CoinModel>(this as CoinModel, _$identity);

  /// Serializes this CoinModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinModel&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.marketCapRank, marketCapRank) || other.marketCapRank == marketCapRank)&&(identical(other.priceChangePercentage24h, priceChangePercentage24h) || other.priceChangePercentage24h == priceChangePercentage24h)&&(identical(other.sparklineIn7d, sparklineIn7d) || other.sparklineIn7d == sparklineIn7d));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbol,name,image,currentPrice,marketCap,marketCapRank,priceChangePercentage24h,sparklineIn7d);

@override
String toString() {
  return 'CoinModel(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, marketCap: $marketCap, marketCapRank: $marketCapRank, priceChangePercentage24h: $priceChangePercentage24h, sparklineIn7d: $sparklineIn7d)';
}


}

/// @nodoc
abstract mixin class $CoinModelCopyWith<$Res>  {
  factory $CoinModelCopyWith(CoinModel value, $Res Function(CoinModel) _then) = _$CoinModelCopyWithImpl;
@useResult
$Res call({
 String id, String symbol, String name, String image,@JsonKey(name: 'current_price') double currentPrice,@JsonKey(name: 'market_cap') double? marketCap,@JsonKey(name: 'market_cap_rank') int? marketCapRank,@JsonKey(name: 'price_change_percentage_24h') double? priceChangePercentage24h,@JsonKey(name: 'sparkline_in_7d') SparklineData? sparklineIn7d
});


$SparklineDataCopyWith<$Res>? get sparklineIn7d;

}
/// @nodoc
class _$CoinModelCopyWithImpl<$Res>
    implements $CoinModelCopyWith<$Res> {
  _$CoinModelCopyWithImpl(this._self, this._then);

  final CoinModel _self;
  final $Res Function(CoinModel) _then;

/// Create a copy of CoinModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? symbol = null,Object? name = null,Object? image = null,Object? currentPrice = null,Object? marketCap = freezed,Object? marketCapRank = freezed,Object? priceChangePercentage24h = freezed,Object? sparklineIn7d = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as double?,marketCapRank: freezed == marketCapRank ? _self.marketCapRank : marketCapRank // ignore: cast_nullable_to_non_nullable
as int?,priceChangePercentage24h: freezed == priceChangePercentage24h ? _self.priceChangePercentage24h : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
as double?,sparklineIn7d: freezed == sparklineIn7d ? _self.sparklineIn7d : sparklineIn7d // ignore: cast_nullable_to_non_nullable
as SparklineData?,
  ));
}
/// Create a copy of CoinModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SparklineDataCopyWith<$Res>? get sparklineIn7d {
    if (_self.sparklineIn7d == null) {
    return null;
  }

  return $SparklineDataCopyWith<$Res>(_self.sparklineIn7d!, (value) {
    return _then(_self.copyWith(sparklineIn7d: value));
  });
}
}


/// Adds pattern-matching-related methods to [CoinModel].
extension CoinModelPatterns on CoinModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoinModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoinModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoinModel value)  $default,){
final _that = this;
switch (_that) {
case _CoinModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoinModel value)?  $default,){
final _that = this;
switch (_that) {
case _CoinModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String symbol,  String name,  String image, @JsonKey(name: 'current_price')  double currentPrice, @JsonKey(name: 'market_cap')  double? marketCap, @JsonKey(name: 'market_cap_rank')  int? marketCapRank, @JsonKey(name: 'price_change_percentage_24h')  double? priceChangePercentage24h, @JsonKey(name: 'sparkline_in_7d')  SparklineData? sparklineIn7d)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoinModel() when $default != null:
return $default(_that.id,_that.symbol,_that.name,_that.image,_that.currentPrice,_that.marketCap,_that.marketCapRank,_that.priceChangePercentage24h,_that.sparklineIn7d);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String symbol,  String name,  String image, @JsonKey(name: 'current_price')  double currentPrice, @JsonKey(name: 'market_cap')  double? marketCap, @JsonKey(name: 'market_cap_rank')  int? marketCapRank, @JsonKey(name: 'price_change_percentage_24h')  double? priceChangePercentage24h, @JsonKey(name: 'sparkline_in_7d')  SparklineData? sparklineIn7d)  $default,) {final _that = this;
switch (_that) {
case _CoinModel():
return $default(_that.id,_that.symbol,_that.name,_that.image,_that.currentPrice,_that.marketCap,_that.marketCapRank,_that.priceChangePercentage24h,_that.sparklineIn7d);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String symbol,  String name,  String image, @JsonKey(name: 'current_price')  double currentPrice, @JsonKey(name: 'market_cap')  double? marketCap, @JsonKey(name: 'market_cap_rank')  int? marketCapRank, @JsonKey(name: 'price_change_percentage_24h')  double? priceChangePercentage24h, @JsonKey(name: 'sparkline_in_7d')  SparklineData? sparklineIn7d)?  $default,) {final _that = this;
switch (_that) {
case _CoinModel() when $default != null:
return $default(_that.id,_that.symbol,_that.name,_that.image,_that.currentPrice,_that.marketCap,_that.marketCapRank,_that.priceChangePercentage24h,_that.sparklineIn7d);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoinModel implements CoinModel {
  const _CoinModel({required this.id, required this.symbol, required this.name, required this.image, @JsonKey(name: 'current_price') required this.currentPrice, @JsonKey(name: 'market_cap') required this.marketCap, @JsonKey(name: 'market_cap_rank') required this.marketCapRank, @JsonKey(name: 'price_change_percentage_24h') required this.priceChangePercentage24h, @JsonKey(name: 'sparkline_in_7d') this.sparklineIn7d});
  factory _CoinModel.fromJson(Map<String, dynamic> json) => _$CoinModelFromJson(json);

@override final  String id;
@override final  String symbol;
@override final  String name;
@override final  String image;
@override@JsonKey(name: 'current_price') final  double currentPrice;
@override@JsonKey(name: 'market_cap') final  double? marketCap;
@override@JsonKey(name: 'market_cap_rank') final  int? marketCapRank;
@override@JsonKey(name: 'price_change_percentage_24h') final  double? priceChangePercentage24h;
@override@JsonKey(name: 'sparkline_in_7d') final  SparklineData? sparklineIn7d;

/// Create a copy of CoinModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoinModelCopyWith<_CoinModel> get copyWith => __$CoinModelCopyWithImpl<_CoinModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoinModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoinModel&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.marketCapRank, marketCapRank) || other.marketCapRank == marketCapRank)&&(identical(other.priceChangePercentage24h, priceChangePercentage24h) || other.priceChangePercentage24h == priceChangePercentage24h)&&(identical(other.sparklineIn7d, sparklineIn7d) || other.sparklineIn7d == sparklineIn7d));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbol,name,image,currentPrice,marketCap,marketCapRank,priceChangePercentage24h,sparklineIn7d);

@override
String toString() {
  return 'CoinModel(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, marketCap: $marketCap, marketCapRank: $marketCapRank, priceChangePercentage24h: $priceChangePercentage24h, sparklineIn7d: $sparklineIn7d)';
}


}

/// @nodoc
abstract mixin class _$CoinModelCopyWith<$Res> implements $CoinModelCopyWith<$Res> {
  factory _$CoinModelCopyWith(_CoinModel value, $Res Function(_CoinModel) _then) = __$CoinModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String symbol, String name, String image,@JsonKey(name: 'current_price') double currentPrice,@JsonKey(name: 'market_cap') double? marketCap,@JsonKey(name: 'market_cap_rank') int? marketCapRank,@JsonKey(name: 'price_change_percentage_24h') double? priceChangePercentage24h,@JsonKey(name: 'sparkline_in_7d') SparklineData? sparklineIn7d
});


@override $SparklineDataCopyWith<$Res>? get sparklineIn7d;

}
/// @nodoc
class __$CoinModelCopyWithImpl<$Res>
    implements _$CoinModelCopyWith<$Res> {
  __$CoinModelCopyWithImpl(this._self, this._then);

  final _CoinModel _self;
  final $Res Function(_CoinModel) _then;

/// Create a copy of CoinModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? symbol = null,Object? name = null,Object? image = null,Object? currentPrice = null,Object? marketCap = freezed,Object? marketCapRank = freezed,Object? priceChangePercentage24h = freezed,Object? sparklineIn7d = freezed,}) {
  return _then(_CoinModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as double?,marketCapRank: freezed == marketCapRank ? _self.marketCapRank : marketCapRank // ignore: cast_nullable_to_non_nullable
as int?,priceChangePercentage24h: freezed == priceChangePercentage24h ? _self.priceChangePercentage24h : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
as double?,sparklineIn7d: freezed == sparklineIn7d ? _self.sparklineIn7d : sparklineIn7d // ignore: cast_nullable_to_non_nullable
as SparklineData?,
  ));
}

/// Create a copy of CoinModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SparklineDataCopyWith<$Res>? get sparklineIn7d {
    if (_self.sparklineIn7d == null) {
    return null;
  }

  return $SparklineDataCopyWith<$Res>(_self.sparklineIn7d!, (value) {
    return _then(_self.copyWith(sparklineIn7d: value));
  });
}
}


/// @nodoc
mixin _$SparklineData {

 List<double> get price;
/// Create a copy of SparklineData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SparklineDataCopyWith<SparklineData> get copyWith => _$SparklineDataCopyWithImpl<SparklineData>(this as SparklineData, _$identity);

  /// Serializes this SparklineData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SparklineData&&const DeepCollectionEquality().equals(other.price, price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(price));

@override
String toString() {
  return 'SparklineData(price: $price)';
}


}

/// @nodoc
abstract mixin class $SparklineDataCopyWith<$Res>  {
  factory $SparklineDataCopyWith(SparklineData value, $Res Function(SparklineData) _then) = _$SparklineDataCopyWithImpl;
@useResult
$Res call({
 List<double> price
});




}
/// @nodoc
class _$SparklineDataCopyWithImpl<$Res>
    implements $SparklineDataCopyWith<$Res> {
  _$SparklineDataCopyWithImpl(this._self, this._then);

  final SparklineData _self;
  final $Res Function(SparklineData) _then;

/// Create a copy of SparklineData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? price = null,}) {
  return _then(_self.copyWith(
price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// Adds pattern-matching-related methods to [SparklineData].
extension SparklineDataPatterns on SparklineData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SparklineData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SparklineData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SparklineData value)  $default,){
final _that = this;
switch (_that) {
case _SparklineData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SparklineData value)?  $default,){
final _that = this;
switch (_that) {
case _SparklineData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<double> price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SparklineData() when $default != null:
return $default(_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<double> price)  $default,) {final _that = this;
switch (_that) {
case _SparklineData():
return $default(_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<double> price)?  $default,) {final _that = this;
switch (_that) {
case _SparklineData() when $default != null:
return $default(_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SparklineData implements SparklineData {
  const _SparklineData({required final  List<double> price}): _price = price;
  factory _SparklineData.fromJson(Map<String, dynamic> json) => _$SparklineDataFromJson(json);

 final  List<double> _price;
@override List<double> get price {
  if (_price is EqualUnmodifiableListView) return _price;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_price);
}


/// Create a copy of SparklineData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SparklineDataCopyWith<_SparklineData> get copyWith => __$SparklineDataCopyWithImpl<_SparklineData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SparklineDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SparklineData&&const DeepCollectionEquality().equals(other._price, _price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_price));

@override
String toString() {
  return 'SparklineData(price: $price)';
}


}

/// @nodoc
abstract mixin class _$SparklineDataCopyWith<$Res> implements $SparklineDataCopyWith<$Res> {
  factory _$SparklineDataCopyWith(_SparklineData value, $Res Function(_SparklineData) _then) = __$SparklineDataCopyWithImpl;
@override @useResult
$Res call({
 List<double> price
});




}
/// @nodoc
class __$SparklineDataCopyWithImpl<$Res>
    implements _$SparklineDataCopyWith<$Res> {
  __$SparklineDataCopyWithImpl(this._self, this._then);

  final _SparklineData _self;
  final $Res Function(_SparklineData) _then;

/// Create a copy of SparklineData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? price = null,}) {
  return _then(_SparklineData(
price: null == price ? _self._price : price // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on
