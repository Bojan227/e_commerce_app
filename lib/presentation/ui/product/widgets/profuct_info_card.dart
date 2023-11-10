import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ProductInfoCard extends StatelessWidget {
  const ProductInfoCard({super.key, required this.title, required this.info});

  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SizedBox(
      height: 64,
      child: ListTile(
        title: Text(
          title,
          style: textTheme.bodyMedium1.copyWith(
            color: colorPalette.black,
          ),
        ),
        trailing: Text(
          info,
          style: textTheme.bodyMedium1.copyWith(
            color: colorPalette.grey500,
          ),
        ),
      ),
    );
  }
}
