import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class ColoredSafeArea extends StatelessWidget {
  const ColoredSafeArea({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Container(
      decoration: BoxDecoration(color: colorPalette.white),
      child: SafeArea(child: child),
    );
  }
}
