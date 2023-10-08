import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/catalog/widgets/action_row.dart';
import 'package:ecommerce_app/presentation/ui/catalog/widgets/product_grid.dart';
import 'package:ecommerce_app/presentation/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CatalogScreen extends StatelessWidget {
  final String title;

  const CatalogScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: colorPalette.white,
        centerTitle: true,
        title: Text(
          title,
          style: textTheme.bodyLarge1.copyWith(color: colorPalette.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: mainConfig.padding1),
        child: const Column(
          children: [
            SearchBarWidget(),
            ActionRow(),
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
