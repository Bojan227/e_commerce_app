import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ProductQuantityRow extends StatelessWidget {
  const ProductQuantityRow({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SizedBox(
      width: 82,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(color: colorPalette.grey100),
            child: Icon(
              Icons.remove,
              color: colorPalette.black,
              size: 20,
            ),
          ),
          Text(
            '0',
            style: textTheme.bodyLarge2.copyWith(color: colorPalette.black),
          ),
          Container(
            decoration: BoxDecoration(color: colorPalette.grey100),
            child: Icon(
              Icons.add,
              color: colorPalette.black,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
