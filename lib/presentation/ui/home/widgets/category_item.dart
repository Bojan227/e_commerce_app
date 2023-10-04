import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String label;
  final String image;

  const CategoryItem({super.key, required this.label, required this.image});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: colorPalette.grey100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 16, bottom: 52, right: 16),
                child: Text(
                  label,
                  style:
                      textTheme.titleLarge.copyWith(color: colorPalette.black),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              child: Image.asset(
                image,
                width: 82,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
