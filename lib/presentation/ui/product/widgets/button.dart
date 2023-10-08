import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Container(
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: mainConfig.padding1),
      decoration: BoxDecoration(
        color: colorPalette.yellow400,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Add to bag',
          style: textTheme.bodyLarge1.copyWith(color: colorPalette.black),
        ),
        const SizedBox(
          width: 8,
        ),
        Image.asset(
          'lib/core/assets/bag.png',
          color: colorPalette.black,
        )
      ]),
    );
  }
}
