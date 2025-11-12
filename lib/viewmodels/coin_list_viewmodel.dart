import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/coin_model.dart';
import '../services/api_service.dart';
import '../services/local_storage_service.dart';
import '../core/network/io_client.dart';

part 'coin_list_viewmodel.g.dart';

// Providers
final dioClientProvider = Provider<DioClient>((ref) => DioClient());

final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService(ref.read(dioClientProvider));
});

final localStorageProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService();
});

// Coin List ViewModel
@riverpod
class CoinListViewModel extends _$CoinListViewModel {
  @override
  Future<List<CoinModel>> build() async {
    return _fetchCoins();
  }

  Future<List<CoinModel>> _fetchCoins() async {
    final apiService = ref.read(apiServiceProvider);
    return await apiService.getCoins();
  }

  // Refresh
  Future<void> refresh() async {
    // Clear cache to force fresh data
    ref.read(apiServiceProvider).clearCache();
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchCoins());
  }

  // Search
  Future<void> search(String query) async {
    if (query.isEmpty) {
      state = await AsyncValue.guard(() => _fetchCoins());
      return;
    }

    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final coins = await _fetchCoins();
      return coins.where((coin) {
        return coin.name.toLowerCase().contains(query.toLowerCase()) ||
            coin.symbol.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }
}

// Favorites ViewModel
@riverpod
class FavoritesViewModel extends _$FavoritesViewModel {
  @override
  List<String> build() {
    final storage = ref.read(localStorageProvider);
    return storage.getAllFavorites();
  }

  void toggleFavorite(String coinId) {
    final storage = ref.read(localStorageProvider);

    if (storage.isFavorite(coinId)) {
      storage.removeFromFavorites(coinId);
    } else {
      storage.addToFavorites(coinId);
    }

    state = storage.getAllFavorites();
  }

  bool isFavorite(String coinId) {
    return state.contains(coinId);
  }
}
