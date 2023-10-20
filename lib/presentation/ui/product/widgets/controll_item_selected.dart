import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class ControllItemSelected extends StatelessWidget {
  const ControllItemSelected({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: 11,
        height: 5,
        decoration: BoxDecoration(color: colorPalette.black),
      ),
    );
  }
}
