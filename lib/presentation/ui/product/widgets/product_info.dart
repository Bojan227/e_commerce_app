import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/button.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/color_chips.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/description_widget.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final double price;
  final String description;

  const ProductInfo(
      {super.key, required this.price, required this.description});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: mainConfig.padding4),
      child: Column(
        children: [
          DescriptionWidget(price: price, description: description),
          Padding(
            padding: EdgeInsets.symmetric(vertical: mainConfig.padding4),
            child: const ColorChips(),
          ),
          CustomIconButton(
            onPress: () {},
            label: 'Add to bag',
            bgColor: colorPalette.yellow400,
            titleColor: colorPalette.black,
            icon: Image.asset(
              'lib/core/assets/bag.png',
              color: colorPalette.black,
            ),
          )
        ],
      ),
    );
  }
}
