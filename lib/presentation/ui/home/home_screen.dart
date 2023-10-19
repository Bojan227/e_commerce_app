import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/app_bar.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/category_list.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/stories_list.dart';
import 'package:ecommerce_app/presentation/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppBarWidget(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) {
                return Container(
                  decoration: BoxDecoration(color: colorPalette.white),
                  padding: EdgeInsets.symmetric(
                    horizontal: mainConfig.padding1,
                  ),
                  child: const Column(
                    children: [
                      SearchBarWidget(),
                      StoriesList(),
                      CategoryList(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
