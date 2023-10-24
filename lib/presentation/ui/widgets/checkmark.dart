import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class CheckMarkWidget extends StatelessWidget {
  const CheckMarkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: colorPalette.yellow400,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Icon(
        size: 16,
        Icons.check,
        color: colorPalette.black,
      ),
    );
  }
}
