import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/catalog/widgets/cancel_button.dart';
import 'package:ecommerce_app/presentation/ui/catalog/widgets/checkmark_tile.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> sortOptions = [
  {'title': 'Price: high to low', "isSelected": true},
  {'title': 'Price: low to high', "isSelected": false},
  {'title': 'New first', "isSelected": false},
  {'title': 'Popular first', "isSelected": false},
];

class SortBottomSheet extends StatelessWidget {
  const SortBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: mainConfig.padding1),
      decoration: BoxDecoration(
        color: colorPalette.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 114,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    child: Text(
                      'sort by',
                      style: textTheme.headlineLarge
                          .copyWith(color: colorPalette.black),
                    ),
                  )
                ],
              ),
            ),
            for (Map<String, dynamic> option in sortOptions)
              CheckMarkTile(
                title: option['title'],
                isSelected: option['isSelected'],
              ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: mainConfig.padding1),
              child: CustomCancelButton(
                  label: 'Cancel',
                  bgColor: colorPalette.grey100,
                  titleColor: colorPalette.black,
                  onPress: () {
                    AutoRouter.of(context).pop();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
