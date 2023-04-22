import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recharme/core/utils/colors.dart';

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorPink,
      // brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: colorPink,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        prefixIconColor: colorGreen,
        labelStyle: TextStyle(
          color: colorGreen,
        ),
        
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: colorPink,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: colorGreen,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: colorGreen,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: colorGreen,
          ),
        ),
      ),
    );
  }
}
