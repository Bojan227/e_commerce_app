import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PromoInput extends StatelessWidget {
  const PromoInput({super.key});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: mainConfig.padding2),
      child: Container(
        height: 64,
        decoration: BoxDecoration(color: colorPalette.grey100),
        padding: EdgeInsets.symmetric(horizontal: mainConfig.padding1),
        child: Center(
          child: TextField(
            style: textTheme.bodyMedium1.copyWith(color: colorPalette.black),
            cursorColor: colorPalette.black,
            decoration: InputDecoration(
              fillColor: colorPalette.grey100,
              border: InputBorder.none,
              suffixIcon: Icon(
                Icons.highlight_remove_outlined,
                color: colorPalette.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
