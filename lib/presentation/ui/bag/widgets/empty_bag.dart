import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/filter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class EmptyBag extends StatelessWidget {
  const EmptyBag({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/core/assets/surprised.png',
                width: 120,
                height: 120,
                color: colorPalette.black,
              ),
              Text(
                'your bag is empty',
                style: textTheme.titleLarge.copyWith(color: colorPalette.black),
              ),
              Text(
                'items remain in your bag for 1 hour, and then they’re moved to your Saved items',
                style: textTheme.bodyMedium1.copyWith(
                  color: colorPalette.grey500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        CustomTextButton(
          label: 'Start shopping',
          bgColor: colorPalette.yellow400,
          titleColor: colorPalette.black,
          onPress: () {},
        ),
      ],
    );
  }
}
