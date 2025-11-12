import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/coin_detail_model.dart';
import 'coin_list_viewmodel.dart';

part 'coin_detail_viewmodel.g.dart';

@riverpod
class CoinDetailViewModel extends _$CoinDetailViewModel {
  @override
  Future<CoinDetailModel> build(String coinId) async {
    return _fetchCoinDetail(coinId);
  }

  Future<CoinDetailModel> _fetchCoinDetail(String coinId) async {
    final apiService = ref.read(apiServiceProvider);
    return await apiService.getCoinDetail(coinId);
  }

  Future<void> refresh(String coinId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchCoinDetail(coinId));
  }
}

@riverpod
class MarketChartViewModel extends _$MarketChartViewModel {
  @override
  Future<MarketChartModel> build(String coinId) async {
    return _fetchMarketChart(coinId);
  }

  Future<MarketChartModel> _fetchMarketChart(String coinId) async {
    final apiService = ref.read(apiServiceProvider);
    return await apiService.getMarketChart(coinId);
  }
}
