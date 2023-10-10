import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CheckMarkTile extends StatelessWidget {
  final String title;
  final bool isSelected;

  const CheckMarkTile(
      {super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SizedBox(
      height: 64,
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: textTheme.bodyMedium1.copyWith(color: colorPalette.black),
            ),
          ),
          if (isSelected)
            Container(
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
            )
        ],
      ),
    );
  }
}
