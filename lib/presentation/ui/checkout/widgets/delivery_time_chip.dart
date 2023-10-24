import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DeliveryTimeChip extends StatelessWidget {
  const DeliveryTimeChip({
    super.key,
    required this.label,
    required this.isSelected,
  });

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 36,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? colorPalette.grey100 : colorPalette.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: colorPalette.grey300),
        ),
        child: Center(
          child: Text(
            label,
            style: textTheme.bodyLarge2.copyWith(color: colorPalette.black),
          ),
        ),
      ),
    );
  }
}
