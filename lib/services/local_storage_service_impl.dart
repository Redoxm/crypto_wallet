import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageService {
  static const String _favoritesBox = 'favorites';

  // Initialize Hive
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox<String>(_favoritesBox);
  }

  // Get favorites box
  Box<String> _getFavoritesBox() {
    return Hive.box<String>(_favoritesBox);
  }

  // Add to favorites
  Future<void> addToFavorites(String coinId) async {
    final box = _getFavoritesBox();
    if (!box.values.contains(coinId)) {
      await box.add(coinId);
    }
  }

  // Remove from favorites
  Future<void> removeFromFavorites(String coinId) async {
    final box = _getFavoritesBox();
    final key = box.keys.firstWhere(
      (k) => box.get(k) == coinId,
      orElse: () => null,
    );
    if (key != null) {
      await box.delete(key);
    }
  }

  // Get all favorites
  List<String> getAllFavorites() {
    final box = _getFavoritesBox();
    return box.values.toList();
  }

  // Check if coin is favorite
  bool isFavorite(String coinId) {
    final box = _getFavoritesBox();
    return box.values.contains(coinId);
  }

  // Clear all favorites
  Future<void> clearFavorites() async {
    final box = _getFavoritesBox();
    await box.clear();
  }
}
