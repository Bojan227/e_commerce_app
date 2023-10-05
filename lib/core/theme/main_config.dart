import 'package:flutter/material.dart';

class MainConfig extends ThemeExtension<MainConfig> {
  final double screenPadding;

  const MainConfig({
    required this.screenPadding,
  });

  @override
  ThemeExtension<MainConfig> copyWith({
    double? screenPadding,
  }) {
    return MainConfig(
      screenPadding: screenPadding ?? this.screenPadding,
    );
  }

  @override
  ThemeExtension<MainConfig> lerp(
      covariant ThemeExtension<MainConfig>? other, double t) {
    if (other is! MainConfig) {
      return this;
    }
    return MainConfig(
      screenPadding: screenPadding,
    );
  }

  static const mainConfig = MainConfig(
    screenPadding: 16,
  );
}
