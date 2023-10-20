import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class BagAppBar extends StatelessWidget {
  const BagAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SliverAppBar(
      surfaceTintColor: colorPalette.white,
      elevation: 0,
      pinned: true,
      expandedHeight: 100,
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 42),
        child: Padding(
          padding: EdgeInsets.only(
              left: mainConfig.padding1,
              right: mainConfig.padding1,
              bottom: mainConfig.padding1),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'bag',
              style:
                  textTheme.headlineLarge.copyWith(color: colorPalette.black),
            ),
          ),
        ),
      ),
    );
  }
}
