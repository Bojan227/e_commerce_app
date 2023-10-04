import 'package:ecommerce_app/core/constants/main.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/tab_item.dart';
import 'package:flutter/material.dart';

class BottomTabContainer extends StatelessWidget {
  const BottomTabContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Container(
      margin: const EdgeInsets.only(bottom: 28),
      decoration: BoxDecoration(color: colorPalette.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (String asset in tabAssets) TabItem(imagePath: asset),
        ],
      ),
    );
  }
}
