import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/filter/widgets/custom_button.dart';
import 'package:ecommerce_app/presentation/ui/filter/widgets/filter_options_list.dart';
import 'package:ecommerce_app/presentation/ui/filter/widgets/slider.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    final TextStyle textStyle =
        textTheme.bodyLarge1.copyWith(color: colorPalette.black);

    return Scaffold(
      backgroundColor: colorPalette.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
          icon: Icon(
            Icons.close,
            color: colorPalette.black,
          ),
        ),
        title: Text(
          'Filter',
          style: textStyle,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: mainConfig.padding1),
            child: Text(
              'Clear',
              style: textStyle,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: mainConfig.padding1),
        child: Column(
          children: [
            const SliderWidget(),
            const Expanded(child: FilterOptionsList()),
            Padding(
              padding: EdgeInsets.only(bottom: mainConfig.padding1),
              child: CustomTextButton(
                label: "Show 25 items",
                bgColor: colorPalette.yellow400,
                titleColor: colorPalette.black,
                onPress: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
