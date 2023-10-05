import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SliverAppBar(
      pinned: true,
      expandedHeight: 158,
      bottom: PreferredSize(
        preferredSize: const Size(343, 42),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Text(
            'ulmo',
            style: textTheme.headlineLarge.copyWith(color: colorPalette.black),
          ),
        ),
      ),
    );
  }
}
