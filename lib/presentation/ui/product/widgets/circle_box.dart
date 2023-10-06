import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class CircleBox extends StatelessWidget {
  final Icon icon;
  final void Function() onTap;

  const CircleBox({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Container(
          width: 36,
          height: 36,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: colorPalette.white),
          child: icon,
        ),
      ),
    );
  }
}