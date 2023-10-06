import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/catalog/widgets/badge.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final double price;
  final String description;
  final bool badge;
  final String badgeLabel;

  const ProductCard({
    super.key,
    required this.image,
    required this.price,
    required this.description,
    required this.badge,
    required this.badgeLabel,
  });

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SizedBox(
      width: 164,
      height: 268,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  height: 200,
                  width: 164,
                  fit: BoxFit.contain,
                ),
              ),
              if (badge)
                Positioned(
                  top: 8,
                  left: 8,
                  child: BadgeWidget(label: badgeLabel),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "\$$price",
                    style: textTheme.bodyLarge1
                        .copyWith(color: colorPalette.black),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(Icons.favorite_border),
              ],
            ),
          ),
          Text(
            description,
            style: textTheme.bodyMedium3.copyWith(color: colorPalette.grey500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
