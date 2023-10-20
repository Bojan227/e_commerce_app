import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TotalContainer extends StatelessWidget {
  const TotalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    final titleLarge = textTheme.titleLarge.copyWith(color: colorPalette.black);
    final bodyMedium =
        textTheme.bodyMedium1.copyWith(color: colorPalette.grey500);

    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'total',
                  style: titleLarge,
                ),
              ),
              Text(
                '\$420,50',
                style: titleLarge,
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Promocode',
                  style: bodyMedium,
                ),
              ),
              Text(
                '-\$25,00',
                style: bodyMedium,
              )
            ],
          ),
        ],
      ),
    );
  }
}
