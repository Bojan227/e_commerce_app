import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.imagePath, required this.isSelected});

  final String imagePath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 16),
      child: Image(
        image: AssetImage(imagePath),
        width: 32,
        height: 32,
        color: isSelected ? colorPalette.black : colorPalette.grey400,
      ),
    );
  }
}
