import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/bag/widgets/bag_app_bar.dart';
import 'package:ecommerce_app/presentation/ui/bag/widgets/bag_container.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Scaffold(
      backgroundColor: colorPalette.white,
      body: const CustomScrollView(
        slivers: [
          BagAppBar(),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: BagContainer(),
            ),
          )
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     childCount: 1,
          //     (context, index) {
          //       return Padding(
          //           padding: EdgeInsets.symmetric(
          //             horizontal: mainConfig.padding1,
          //           ),
          //           child: );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
