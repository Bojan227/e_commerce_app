import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  final double price;
  final String description;

  const DescriptionWidget({
    super.key,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SizedBox(
      height: 84,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "\$$price",
            style: textTheme.titleLarge.copyWith(color: colorPalette.black),
          ),
          const SizedBox(
            height: 4,
          ),
          Expanded(
            child: Text(
              description,
              style:
                  textTheme.bodyMedium1.copyWith(color: colorPalette.grey500),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
