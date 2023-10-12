import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/ui/widgets/circle_box.dart';
import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return SliverAppBar(
      pinned: true,
      expandedHeight: 458,
      flexibleSpace: Stack(
        children: [
          Image.asset(
            'lib/core/assets/main_product_1.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Image.asset(
              'lib/core/assets/page_controll.png',
            ),
          ),
        ],
      ),
      leadingWidth: double.infinity,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleBox(
            boxColor: colorPalette.white,
            icon: Icon(
              Icons.arrow_back,
              color: colorPalette.black,
            ),
            onTap: () {
              AutoRouter.of(context).pop();
            },
          ),
          CircleBox(
            boxColor: colorPalette.white,
            icon: Icon(
              Icons.favorite,
              color: colorPalette.black,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
