import 'package:auto_route/auto_route.dart';
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

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppBarWidget(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: mainConfig.screenPadding,
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
