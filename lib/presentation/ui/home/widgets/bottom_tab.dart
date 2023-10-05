import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/constants/main.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/tab_item.dart';
import 'package:flutter/material.dart';

class BottomTabContainer extends StatelessWidget {
  final TabsRouter tabsRouter;

  const BottomTabContainer({super.key, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Container(
      margin: const EdgeInsets.only(bottom: 28),
      decoration: BoxDecoration(color: colorPalette.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int index = 0; index < tabAssets.length; index += 1)
            GestureDetector(
              onTap: () {
                tabsRouter.setActiveIndex(index);
              },
              child: TabItem(
                isSelected: tabsRouter.activeIndex == index,
                imagePath: tabAssets[index],
              ),
            ),
        ],
      ),
    );
  }
}
