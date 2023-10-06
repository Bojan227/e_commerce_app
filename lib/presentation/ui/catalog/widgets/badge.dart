import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final String label;

  const BadgeWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      decoration: BoxDecoration(color: colorPalette.yellow400),
      child: Text(
        label,
        style: textTheme.bodyLarge2.copyWith(
          color: colorPalette.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
