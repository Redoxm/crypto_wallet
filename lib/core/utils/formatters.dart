// lib/core/utils/formatters.dart

import 'package:intl/intl.dart';

class Formatters {
  // Format price: $1,234.56
  static String formatPrice(double price) {
    return NumberFormat.currency(symbol: '\$', decimalDigits: 2).format(price);
  }

  // Format large numbers: 1.2B, 3.4M
  static String formatLargeNumber(double number) {
    if (number >= 1e9) {
      return '\$${(number / 1e9).toStringAsFixed(2)}B';
    } else if (number >= 1e6) {
      return '\$${(number / 1e6).toStringAsFixed(2)}M';
    } else if (number >= 1e3) {
      return '\$${(number / 1e3).toStringAsFixed(2)}K';
    } else {
      return '\$${number.toStringAsFixed(2)}';
    }
  }

  // Format percentage: +2.5% or -1.2%
  static String formatPercentage(double percentage) {
    final sign = percentage >= 0 ? '+' : '';
    return '$sign${percentage.toStringAsFixed(2)}%';
  }
}
