import 'package:hive_flutter/hive_flutter.dart';
import 'dart:convert';

class LocalStorageService {
  static const String _favoritesBox = 'favorites';
  static const String _cacheBox = 'api_cache';

  // Initialize Hive
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox<String>(_favoritesBox);
    await Hive.openBox<String>(_cacheBox);
  }

  // Get favorites box
  Box<String> _getFavoritesBox() {
    return Hive.box<String>(_favoritesBox);
  }

  // Get cache box
  Box<String> _getCacheBox() {
    return Hive.box<String>(_cacheBox);
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

  // ==================== CACHE METHODS ====================

  // Save cached data with timestamp
  Future<void> saveCache(String key, String jsonData) async {
    final box = _getCacheBox();
    final cacheData = {
      'data': jsonData,
      'timestamp': DateTime.now().toIso8601String(),
    };
    await box.put(key, json.encode(cacheData));
  }

  // Get cached data
  Map<String, dynamic>? getCache(String key) {
    final box = _getCacheBox();
    final cacheString = box.get(key);

    if (cacheString == null) return null;

    try {
      final cacheData = json.decode(cacheString) as Map<String, dynamic>;
      return cacheData;
    } catch (e) {
      return null;
    }
  }

  // Check if cache is expired
  bool isCacheExpired(String key, Duration maxAge) {
    final cacheData = getCache(key);
    if (cacheData == null) return true;

    final timestampString = cacheData['timestamp'] as String?;
    if (timestampString == null) return true;

    final timestamp = DateTime.parse(timestampString);
    final age = DateTime.now().difference(timestamp);

    return age > maxAge;
  }

  // Clear specific cache
  Future<void> clearCache(String key) async {
    final box = _getCacheBox();
    await box.delete(key);
  }

  // Clear all cache
  Future<void> clearAllCache() async {
    final box = _getCacheBox();
    await box.clear();
  }
}
