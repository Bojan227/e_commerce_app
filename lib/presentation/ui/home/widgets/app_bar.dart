import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return SliverAppBar(
      surfaceTintColor: colorPalette.white,
      pinned: true,
      expandedHeight: 158,
      bottom: PreferredSize(
        preferredSize: const Size(343, 42),
        child: Padding(
          padding: EdgeInsets.only(
              left: mainConfig.padding1,
              right: mainConfig.padding1,
              bottom: mainConfig.padding1),
          child: Text(
            'ulmo',
            style: textTheme.headlineLarge.copyWith(color: colorPalette.black),
          ),
        ),
      ),
    );
  }
}
