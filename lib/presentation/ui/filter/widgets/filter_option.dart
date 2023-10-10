import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class FilterOption extends StatelessWidget {
  final String title;
  final String option;

  const FilterOption({super.key, required this.title, required this.option});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SizedBox(
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: textTheme.bodyMedium1.copyWith(color: colorPalette.black),
          ),
          Text(
            option,
            style: textTheme.bodyMedium1.copyWith(color: colorPalette.grey500),
          )
        ],
      ),
    );
  }
}
