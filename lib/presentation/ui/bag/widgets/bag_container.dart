import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/bag/widgets/bag_products_list.dart';
import 'package:ecommerce_app/presentation/ui/bag/widgets/promo_input.dart';
import 'package:ecommerce_app/presentation/ui/bag/widgets/total_container.dart';
import 'package:ecommerce_app/presentation/ui/filter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BagContainer extends StatelessWidget {
  const BagContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BagProductsList(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: mainConfig.padding1),
            child: Text(
              'promocode',
              style: textTheme.titleLarge.copyWith(color: colorPalette.black),
            ),
          ),
          const PromoInput(),
          const TotalContainer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: mainConfig.padding1),
            child: CustomTextButton(
              label: 'Checkout',
              bgColor: colorPalette.yellow400,
              titleColor: colorPalette.black,
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
