import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/router/router_config.gr.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String label;

  const CategoryItem({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(
          PageRouteInfo(
            'CatalogScreen',
            args: CatalogScreenArgs(title: label),
          ),
        );
      },
      child: SizedBox(
        height: 64,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(36),
              child: Image.asset(image),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Text(
                label,
                style:
                    textTheme.bodyMedium1.copyWith(color: colorPalette.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
