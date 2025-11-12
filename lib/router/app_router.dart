// lib/router/app_router.dart

import 'package:go_router/go_router.dart';
import '../views/screens/splash_screen.dart';
import '../views/screens/coin_list_screen.dart';
import '../views/screens/coin_detail_screen.dart';
import '../views/screens/favorites_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(path: '/splash', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/', builder: (context, state) => const CoinListScreen()),
    GoRoute(
      path: '/favorites',
      builder: (context, state) => const FavoritesScreen(),
    ),
    GoRoute(
      path: '/coin/:id',
      builder: (context, state) {
        final coinId = state.pathParameters['id']!;
        return CoinDetailScreen(coinId: coinId);
      },
    ),
  ],
);
