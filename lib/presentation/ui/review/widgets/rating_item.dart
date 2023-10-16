import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem(
      {super.key, required this.currentRatingValue, required this.index});

  final int currentRatingValue;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return index <= currentRatingValue
        ? Icon(
            Icons.star,
            color: colorPalette.yellow400,
          )
        : Icon(
            Icons.star_border,
            color: colorPalette.grey300,
          );
  }
}
