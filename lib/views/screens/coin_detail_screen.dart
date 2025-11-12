// lib/views/screens/coin_detail_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../core/widgets/gradient_background.dart';
import '../../core/widgets/glass_card.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/formatters.dart';
import '../../viewmodels/coin_detail_viewmodel.dart';
import '../../viewmodels/coin_list_viewmodel.dart';
import '../widgets/price_chart.dart';

class CoinDetailScreen extends ConsumerWidget {
  final String coinId;

  const CoinDetailScreen({super.key, required this.coinId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(coinDetailViewModelProvider(coinId));
    final chartAsync = ref.watch(marketChartViewModelProvider(coinId));
    final favorites = ref.watch(favoritesViewModelProvider);
    final isFav = favorites.contains(coinId);

    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Coin Details'),
          actions: [
            IconButton(
              icon: Icon(
                isFav ? Icons.favorite : Icons.favorite_border,
                color: isFav ? AppColors.error : AppColors.textPrimary,
              ),
              onPressed: () {
                ref
                    .read(favoritesViewModelProvider.notifier)
                    .toggleFavorite(coinId);
              },
            ),
          ],
        ),
        body: detailAsync.when(
          data: (coin) {
            final priceUsd = coin.marketData.currentPrice['usd'] ?? 0;
            final priceChange = coin.marketData.priceChangePercentage24h ?? 0;
            final isPositive = priceChange >= 0;
            final marketCap = coin.marketData.marketCap['usd'] ?? 0;
            final volume = coin.marketData.totalVolume['usd'] ?? 0;
            final high24h = coin.marketData.high24h['usd'] ?? 0;
            final low24h = coin.marketData.low24h['usd'] ?? 0;

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Coin Header
                  GlassCard(
                    child: Column(
                      children: [
                        CachedNetworkImage(
                          imageUrl: coin.image.large,
                          width: 80,
                          height: 80,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          coin.name,
                          style: const TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          coin.symbol.toUpperCase(),
                          style: const TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          Formatters.formatPrice(priceUsd),
                          style: const TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: isPositive
                                ? AppColors.success.withOpacity(0.2)
                                : AppColors.error.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            Formatters.formatPercentage(priceChange),
                            style: TextStyle(
                              color: isPositive
                                  ? AppColors.success
                                  : AppColors.error,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Price Chart
                  GlassCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '7 Days Chart',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 16),
                        chartAsync.when(
                          data: (chart) {
                            final prices = chart.prices
                                .map((p) => p[1])
                                .toList();
                            return PriceChart(
                              prices: prices,
                              isPositive: isPositive,
                            );
                          },
                          loading: () => const SizedBox(
                            height: 200,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                          error: (e, s) => const SizedBox(
                            height: 200,
                            child: Center(
                              child: Text(
                                'Failed to load chart',
                                style: TextStyle(color: AppColors.error),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Market Stats
                  GlassCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Market Stats',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 16),
                        _buildStatRow(
                          'Market Cap',
                          Formatters.formatLargeNumber(marketCap),
                        ),
                        _buildStatRow(
                          '24h Volume',
                          Formatters.formatLargeNumber(volume),
                        ),
                        _buildStatRow(
                          '24h High',
                          Formatters.formatPrice(high24h),
                        ),
                        _buildStatRow(
                          '24h Low',
                          Formatters.formatPrice(low24h),
                        ),
                        if (coin.marketData.circulatingSupply != null)
                          _buildStatRow(
                            'Circulating Supply',
                            '${coin.marketData.circulatingSupply!.toStringAsFixed(0)} ${coin.symbol.toUpperCase()}',
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(color: AppColors.primary),
          ),
          error: (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  size: 64,
                  color: AppColors.error,
                ),
                const SizedBox(height: 16),
                Text(
                  error.toString(),
                  style: const TextStyle(color: AppColors.textSecondary),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(coinDetailViewModelProvider(coinId).notifier)
                        .refresh(coinId);
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
