import 'package:flutter/material.dart';
import 'package:recharme/core/utils/colors.dart';

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorPink,
      // brightness: Brightness.light,
    );
  }
}
