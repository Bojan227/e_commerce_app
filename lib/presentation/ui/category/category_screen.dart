import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/category/widget/categories_list.dart';
import 'package:ecommerce_app/presentation/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CategoryScreen extends StatelessWidget {
  final String title;

  const CategoryScreen({super.key, required this.title});

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mainConfig.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBarWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'categories',
                style: textTheme.titleLarge.copyWith(color: colorPalette.black),
              ),
            ),
            const CategoriesList()
          ],
        ),
      ),
    );
  }
}
