import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CatalogScreen extends StatelessWidget {
  final String title;

  const CatalogScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: textTheme.bodyLarge1.copyWith(color: colorPalette.black),
        ),
      ),
    );
  }
}
