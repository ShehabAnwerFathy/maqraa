import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static const MaterialColor defaultColor = MaterialColor(
    _defaultPrimaryValue,
    <int, Color>{
      50: Color(_defaultPrimaryValue),
      100: Color(_defaultPrimaryValue),
      200: Color(_defaultPrimaryValue),
      300: Color(_defaultPrimaryValue),
      400: Color(_defaultPrimaryValue),
      500: Color(_defaultPrimaryValue),
      600: Color(_defaultPrimaryValue),
      700: Color(_defaultPrimaryValue),
      800: Color(_defaultPrimaryValue),
      900: Color(_defaultPrimaryValue),
    },
  );
  static const int _defaultPrimaryValue = 0xFF223B33;
}
