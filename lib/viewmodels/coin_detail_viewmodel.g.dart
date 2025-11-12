// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_detail_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CoinDetailViewModel)
const coinDetailViewModelProvider = CoinDetailViewModelFamily._();

final class CoinDetailViewModelProvider
    extends $AsyncNotifierProvider<CoinDetailViewModel, CoinDetailModel> {
  const CoinDetailViewModelProvider._({
    required CoinDetailViewModelFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'coinDetailViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$coinDetailViewModelHash();

  @override
  String toString() {
    return r'coinDetailViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CoinDetailViewModel create() => CoinDetailViewModel();

  @override
  bool operator ==(Object other) {
    return other is CoinDetailViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$coinDetailViewModelHash() =>
    r'5d48f1bd1223f138d3534616ceba8c9a78dbd885';

final class CoinDetailViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          CoinDetailViewModel,
          AsyncValue<CoinDetailModel>,
          CoinDetailModel,
          FutureOr<CoinDetailModel>,
          String
        > {
  const CoinDetailViewModelFamily._()
    : super(
        retry: null,
        name: r'coinDetailViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CoinDetailViewModelProvider call(String coinId) =>
      CoinDetailViewModelProvider._(argument: coinId, from: this);

  @override
  String toString() => r'coinDetailViewModelProvider';
}

abstract class _$CoinDetailViewModel extends $AsyncNotifier<CoinDetailModel> {
  late final _$args = ref.$arg as String;
  String get coinId => _$args;

  FutureOr<CoinDetailModel> build(String coinId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<CoinDetailModel>, CoinDetailModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CoinDetailModel>, CoinDetailModel>,
              AsyncValue<CoinDetailModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(MarketChartViewModel)
const marketChartViewModelProvider = MarketChartViewModelFamily._();

final class MarketChartViewModelProvider
    extends $AsyncNotifierProvider<MarketChartViewModel, MarketChartModel> {
  const MarketChartViewModelProvider._({
    required MarketChartViewModelFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'marketChartViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$marketChartViewModelHash();

  @override
  String toString() {
    return r'marketChartViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MarketChartViewModel create() => MarketChartViewModel();

  @override
  bool operator ==(Object other) {
    return other is MarketChartViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$marketChartViewModelHash() =>
    r'b489b03bfb1b574c249d688d4eae3cb09d4e8075';

final class MarketChartViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          MarketChartViewModel,
          AsyncValue<MarketChartModel>,
          MarketChartModel,
          FutureOr<MarketChartModel>,
          String
        > {
  const MarketChartViewModelFamily._()
    : super(
        retry: null,
        name: r'marketChartViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MarketChartViewModelProvider call(String coinId) =>
      MarketChartViewModelProvider._(argument: coinId, from: this);

  @override
  String toString() => r'marketChartViewModelProvider';
}

abstract class _$MarketChartViewModel extends $AsyncNotifier<MarketChartModel> {
  late final _$args = ref.$arg as String;
  String get coinId => _$args;

  FutureOr<MarketChartModel> build(String coinId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<MarketChartModel>, MarketChartModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MarketChartModel>, MarketChartModel>,
              AsyncValue<MarketChartModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
