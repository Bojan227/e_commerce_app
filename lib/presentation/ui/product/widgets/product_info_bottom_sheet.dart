import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/constants/main.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/product_info_container.dart';
import 'package:flutter/material.dart';

class ProductInfoBottomSheet extends StatelessWidget {
  const ProductInfoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: colorPalette.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(
            24,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 56,
                  height: 4,
                  decoration: BoxDecoration(
                    color: colorPalette.grey200,
                    borderRadius: BorderRadius.circular(
                      11,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: GestureDetector(
                onTap: () {
                  AutoRouter.of(context).pop();
                },
                child: Icon(
                  Icons.close,
                  color: colorPalette.black,
                  size: 24,
                ),
              ),
            ),
            Text(
              'Product information',
              style: textTheme.headlineLarge.copyWith(
                color: colorPalette.black,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const ProductInfoContainer(
                title: 'measurements', productInfo: measurements),
            const SizedBox(
              height: 16,
            ),
            const ProductInfoContainer(
                title: 'composition', productInfo: composition),
          ],
        ),
      ),
    );
  }
}
