import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class ControllItem extends StatelessWidget {
  const ControllItem({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: 4,
        height: 4,
        decoration: BoxDecoration(color: colorPalette.grey300),
      ),
    );
  }
}
