// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CoinListViewModel)
const coinListViewModelProvider = CoinListViewModelProvider._();

final class CoinListViewModelProvider
    extends $AsyncNotifierProvider<CoinListViewModel, List<CoinModel>> {
  const CoinListViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'coinListViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$coinListViewModelHash();

  @$internal
  @override
  CoinListViewModel create() => CoinListViewModel();
}

String _$coinListViewModelHash() => r'5e9104de98494f9bd3bcc032d4f7cff0a2fbca21';

abstract class _$CoinListViewModel extends $AsyncNotifier<List<CoinModel>> {
  FutureOr<List<CoinModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<CoinModel>>, List<CoinModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<CoinModel>>, List<CoinModel>>,
              AsyncValue<List<CoinModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(FavoritesViewModel)
const favoritesViewModelProvider = FavoritesViewModelProvider._();

final class FavoritesViewModelProvider
    extends $NotifierProvider<FavoritesViewModel, List<String>> {
  const FavoritesViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesViewModelHash();

  @$internal
  @override
  FavoritesViewModel create() => FavoritesViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }
}

String _$favoritesViewModelHash() =>
    r'08fd70f0a145f19fe0223c0311f13941ef8e9358';

abstract class _$FavoritesViewModel extends $Notifier<List<String>> {
  List<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
