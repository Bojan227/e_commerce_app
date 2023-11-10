import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/profuct_info_card.dart';
import 'package:flutter/material.dart';

class ProductInfoContainer extends StatelessWidget {
  const ProductInfoContainer(
      {super.key, required this.title, required this.productInfo});

  final String title;
  final List<Map<String, String>> productInfo;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.titleLarge.copyWith(
            color: colorPalette.black,
          ),
        ),
        for (final product in productInfo)
          ProductInfoCard(title: product['title']!, info: product['info']!)
      ],
    );
  }
}
