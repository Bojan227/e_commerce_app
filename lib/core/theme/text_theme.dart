// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextTheme extends ThemeExtension<CustomTextTheme> {
  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle bodyLarge1;
  final TextStyle bodyMedium1;
  final TextStyle bodySmall1;
  final TextStyle bodyLarge2;
  final TextStyle bodyMedium2;
  final TextStyle bodySmall2;
  final TextStyle bodyLarge3;
  final TextStyle bodyMedium3;
  final TextStyle bodySmall3;

  CustomTextTheme(
      {required this.displayLarge,
      required this.displayMedium,
      required this.displaySmall,
      required this.headlineLarge,
      required this.headlineMedium,
      required this.headlineSmall,
      required this.titleLarge,
      required this.titleMedium,
      required this.titleSmall,
      required this.bodyLarge,
      required this.bodyMedium,
      required this.bodySmall,
      required this.bodyLarge1,
      required this.bodyMedium1,
      required this.bodySmall1,
      required this.bodyLarge2,
      required this.bodyMedium2,
      required this.bodySmall2,
      required this.bodyLarge3,
      required this.bodyMedium3,
      required this.bodySmall3});

  static TextStyle poppinsTextStyle({
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle displayTextStyle(double fontSize, FontWeight fontWeight) {
    return poppinsTextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle headlineTextStyle(double fontSize, FontWeight fontWeight) {
    return poppinsTextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle titleTextStyle(double fontSize, FontWeight fontWeight) {
    return poppinsTextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle bodyTextStyle(double fontSize, FontWeight fontWeight) {
    return poppinsTextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle labelTextStyle(double fontSize, FontWeight fontWeight) {
    return poppinsTextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  @override
  CustomTextTheme lerp(
    covariant CustomTextTheme? other,
    double t,
  ) {
    if (other is! CustomTextTheme) {
      return this;
    }

    return CustomTextTheme(
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t)!,
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      bodyLarge1: TextStyle.lerp(bodyLarge1, other.bodyLarge1, t)!,
      bodyMedium1: TextStyle.lerp(bodyMedium1, other.bodyMedium1, t)!,
      bodySmall1: TextStyle.lerp(bodySmall1, other.bodySmall1, t)!,
      bodyLarge2: TextStyle.lerp(bodyLarge2, other.bodyLarge2, t)!,
      bodyMedium2: TextStyle.lerp(bodyMedium2, other.bodyMedium2, t)!,
      bodySmall2: TextStyle.lerp(bodySmall2, other.bodySmall2, t)!,
      bodyLarge3: TextStyle.lerp(bodyLarge3, other.bodyLarge3, t)!,
      bodyMedium3: TextStyle.lerp(bodyMedium3, other.bodyMedium3, t)!,
      bodySmall3: TextStyle.lerp(bodySmall3, other.bodySmall3, t)!,
    );
  }

  @override
  CustomTextTheme copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? bodyLarge1,
    TextStyle? bodyMedium1,
    TextStyle? bodySmall1,
    TextStyle? bodyLarge2,
    TextStyle? bodyMedium2,
    TextStyle? bodySmall2,
    TextStyle? bodyLarge3,
    TextStyle? bodyMedium3,
    TextStyle? bodySmall3,
  }) {
    return CustomTextTheme(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      bodyLarge1: bodyLarge1 ?? this.bodyLarge1,
      bodyMedium1: bodyMedium1 ?? this.bodyMedium1,
      bodySmall1: bodySmall1 ?? this.bodySmall1,
      bodyLarge2: bodyLarge2 ?? this.bodyLarge2,
      bodyMedium2: bodyMedium2 ?? this.bodyMedium2,
      bodySmall2: bodySmall2 ?? this.bodySmall2,
      bodyLarge3: bodyLarge3 ?? this.bodyLarge3,
      bodyMedium3: bodyMedium3 ?? this.bodyMedium3,
      bodySmall3: bodySmall3 ?? this.bodySmall3,
    );
  }

  static final textTheme = CustomTextTheme(
      displayLarge: displayTextStyle(48.0, FontWeight.w700),
      displayMedium: displayTextStyle(48.0, FontWeight.w400),
      displaySmall: displayTextStyle(48.0, FontWeight.w300),
      headlineLarge: headlineTextStyle(32.0, FontWeight.w700),
      headlineMedium: headlineTextStyle(32.0, FontWeight.w400),
      headlineSmall: headlineTextStyle(32.0, FontWeight.w300),
      titleLarge: titleTextStyle(24.0, FontWeight.w600),
      titleMedium: titleTextStyle(24.0, FontWeight.w400),
      titleSmall: titleTextStyle(24.0, FontWeight.w300),
      bodyLarge: bodyTextStyle(18.0, FontWeight.w700),
      bodyMedium: bodyTextStyle(18.0, FontWeight.normal),
      bodySmall: bodyTextStyle(18.0, FontWeight.w300),
      bodyLarge1: labelTextStyle(16.0, FontWeight.w500),
      bodyMedium1: labelTextStyle(16.0, FontWeight.w400),
      bodySmall1: labelTextStyle(16.0, FontWeight.w300),
      bodyLarge2: labelTextStyle(14.0, FontWeight.w700),
      bodyMedium2: labelTextStyle(14.0, FontWeight.w400),
      bodySmall2: labelTextStyle(14.0, FontWeight.w300),
      bodyLarge3: labelTextStyle(12.0, FontWeight.w700),
      bodyMedium3: labelTextStyle(12.0, FontWeight.w400),
      bodySmall3: labelTextStyle(12.0, FontWeight.w300));
}
