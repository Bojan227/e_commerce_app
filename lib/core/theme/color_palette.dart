import 'package:ecommerce_app/core/utils/color_from_hex.dart';
import 'package:flutter/material.dart';

class ColorPalette extends ThemeExtension<ColorPalette> {
  final Color black;
  final Color white;

// Giratina
  final Color grey500;
  final Color grey400;
  final Color grey300;
  final Color grey200;
  final Color grey100;

  // Charizard
  final Color yellow500;
  final Color yellow400;
  final Color yellow300;
  final Color yellow200;
  final Color yellow100;

  // Gengar
  final Color indigo500;
  final Color indigo400;
  final Color indigo300;
  final Color indigo200;
  final Color indigo100;

  // Magikarp
  final Color red500;
  final Color red400;
  final Color red300;
  final Color red200;
  final Color red100;

  // Venusaur
  final Color green500;
  final Color green400;
  final Color green300;
  final Color green200;
  final Color green100;

  ColorPalette(
      {required this.black,
      required this.white,
      required this.grey500,
      required this.grey400,
      required this.grey300,
      required this.grey200,
      required this.grey100,
      required this.yellow500,
      required this.yellow400,
      required this.yellow300,
      required this.yellow200,
      required this.yellow100,
      required this.indigo500,
      required this.indigo400,
      required this.indigo300,
      required this.indigo200,
      required this.indigo100,
      required this.red500,
      required this.red400,
      required this.red300,
      required this.red200,
      required this.red100,
      required this.green500,
      required this.green400,
      required this.green300,
      required this.green200,
      required this.green100});

  @override
  ThemeExtension<ColorPalette> copyWith({
    Color? black,
    Color? white,
    Color? green100,
    Color? green200,
    Color? green300,
    Color? green400,
    Color? green500,
    Color? grey100,
    Color? grey200,
    Color? grey300,
    Color? grey400,
    Color? grey500,
    Color? red100,
    Color? red200,
    Color? red300,
    Color? red400,
    Color? red500,
    Color? indigo100,
    Color? indigo200,
    Color? indigo300,
    Color? indigo400,
    Color? indigo500,
    Color? yellow100,
    Color? yellow200,
    Color? yellow300,
    Color? yellow400,
    Color? yellow500,
  }) {
    return ColorPalette(
      black: black ?? this.black,
      white: white ?? this.white,
      green100: green100 ?? this.green100,
      green200: green200 ?? this.green200,
      green300: green300 ?? this.green300,
      green400: green400 ?? this.green400,
      green500: green500 ?? this.green500,
      grey100: grey100 ?? this.grey100,
      grey200: grey200 ?? this.grey200,
      grey300: grey300 ?? this.grey300,
      grey400: grey400 ?? this.grey400,
      grey500: grey500 ?? this.grey500,
      red100: red100 ?? this.red100,
      red200: red200 ?? this.red200,
      red300: red300 ?? this.red300,
      red400: red400 ?? this.red400,
      red500: red500 ?? this.red500,
      indigo100: indigo100 ?? this.indigo100,
      indigo200: indigo200 ?? this.indigo200,
      indigo300: indigo300 ?? this.indigo300,
      indigo400: indigo400 ?? this.indigo400,
      indigo500: indigo500 ?? this.indigo500,
      yellow100: yellow100 ?? this.yellow100,
      yellow200: yellow200 ?? this.yellow200,
      yellow300: yellow300 ?? this.yellow300,
      yellow400: yellow400 ?? this.yellow400,
      yellow500: yellow500 ?? this.yellow500,
    );
  }

  @override
  ThemeExtension<ColorPalette> lerp(
    covariant ThemeExtension<ColorPalette>? other,
    double t,
  ) {
    if (other is! ColorPalette) {
      return this;
    }

    return ColorPalette(
      black: Color.lerp(black, other.black, t)!,
      white: Color.lerp(white, other.white, t)!,
      green100: Color.lerp(green100, other.green100, t)!,
      green200: Color.lerp(green200, other.green200, t)!,
      green300: Color.lerp(green300, other.green300, t)!,
      green400: Color.lerp(green400, other.green400, t)!,
      green500: Color.lerp(green500, other.green500, t)!,
      red100: Color.lerp(red100, other.red100, t)!,
      red200: Color.lerp(red200, other.red200, t)!,
      red300: Color.lerp(red300, other.red300, t)!,
      red400: Color.lerp(red400, other.red400, t)!,
      red500: Color.lerp(red500, other.red500, t)!,
      indigo100: Color.lerp(indigo100, other.indigo100, t)!,
      indigo200: Color.lerp(indigo200, other.indigo200, t)!,
      indigo300: Color.lerp(indigo300, other.indigo300, t)!,
      indigo400: Color.lerp(indigo400, other.indigo400, t)!,
      indigo500: Color.lerp(indigo500, other.indigo500, t)!,
      yellow100: Color.lerp(yellow100, other.yellow100, t)!,
      yellow200: Color.lerp(yellow200, other.yellow200, t)!,
      yellow300: Color.lerp(yellow300, other.yellow300, t)!,
      yellow400: Color.lerp(yellow400, other.yellow400, t)!,
      yellow500: Color.lerp(green500, other.green500, t)!,
      grey100: Color.lerp(grey100, other.grey100, t)!,
      grey200: Color.lerp(grey200, other.grey200, t)!,
      grey300: Color.lerp(grey300, other.grey300, t)!,
      grey400: Color.lerp(grey400, other.grey400, t)!,
      grey500: Color.lerp(grey500, other.grey500, t)!,
    );
  }

  static final light = ColorPalette(
    black: colorFromHex("#212121"),
    white: colorFromHex("#FFFFFF"),
    grey500: colorFromHex("#9E9E9E"),
    grey400: colorFromHex("#BDBDBD"),
    grey300: colorFromHex("#E0E0E0"),
    grey200: colorFromHex("#EEEEEE"),
    grey100: colorFromHex("#F5F5F5"),
    yellow500: colorFromHex("#FFC107"),
    yellow400: colorFromHex("#FEE440"),
    yellow300: colorFromHex("#FFD54F"),
    yellow200: colorFromHex("#FFE082"),
    yellow100: colorFromHex("#FFECB3"),
    indigo500: colorFromHex("#3F51B5"),
    indigo400: colorFromHex("#5C6BC0"),
    indigo300: colorFromHex("#7986CB"),
    indigo200: colorFromHex("#9FA8DA"),
    indigo100: colorFromHex("#C5CAE9"),
    red500: colorFromHex("#F44336"),
    red400: colorFromHex("#EF5350"),
    red300: colorFromHex("#E57373"),
    red200: colorFromHex("#EF9A9A"),
    red100: colorFromHex("#FFCDD2"),
    green500: colorFromHex("#4CAF50"),
    green400: colorFromHex("#66BB6A"),
    green300: colorFromHex("#81C784"),
    green200: colorFromHex("#A5D6A7"),
    green100: colorFromHex("#C8E6C9"),
  );
}
