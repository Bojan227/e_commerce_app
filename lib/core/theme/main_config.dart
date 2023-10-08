import 'package:flutter/material.dart';

class MainConfig extends ThemeExtension<MainConfig> {
  final double padding1;
  final double padding2;
  final double padding3;
  final double padding4;

  MainConfig(
      {required this.padding1,
      required this.padding2,
      required this.padding3,
      required this.padding4});

  @override
  ThemeExtension<MainConfig> copyWith({
    double? padding1,
    double? padding2,
    double? padding3,
    double? padding4,
  }) {
    return MainConfig(
      padding1: padding1 ?? this.padding1,
      padding2: padding2 ?? this.padding2,
      padding3: padding3 ?? this.padding3,
      padding4: padding4 ?? this.padding4,
    );
  }

  @override
  ThemeExtension<MainConfig> lerp(
      covariant ThemeExtension<MainConfig>? other, double t) {
    if (other is! MainConfig) {
      return this;
    }
    return MainConfig(
      padding1: padding1,
      padding2: padding2,
      padding3: padding3,
      padding4: padding4,
    );
  }

  static final mainConfig =
      MainConfig(padding1: 16, padding2: 8, padding3: 10, padding4: 24);
}
