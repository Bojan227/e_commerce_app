import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/bag/widgets/product_quantity_row.dart';
import 'package:flutter/material.dart';

class BagProduct extends StatelessWidget {
  final String image;
  final String price;
  final String description;

  const BagProduct(
      {super.key,
      required this.image,
      required this.price,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Container(
      height: 115,
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: 94,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            price,
                            style: textTheme.bodyLarge1.copyWith(
                              color: colorPalette.black,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.cancel_outlined,
                          color: colorPalette.grey500,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        description,
                        style: textTheme.bodyMedium3
                            .copyWith(color: colorPalette.grey500),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
                const ProductQuantityRow()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
