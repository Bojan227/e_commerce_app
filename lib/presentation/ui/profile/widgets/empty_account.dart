import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_button.dart';
import 'package:flutter/material.dart';

class EmptyAccount extends StatelessWidget {
  const EmptyAccount({super.key});

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
              Image.asset('lib/core/assets/smiley.png'),
              Text(
                'come on in',
                style: textTheme.titleLarge.copyWith(
                  color: colorPalette.black,
                ),
              ),
              Text(
                'view orders and update your details',
                style: textTheme.bodyMedium1.copyWith(
                  color: colorPalette.grey500,
                ),
              ),
            ],
          ),
        ),
        CustomTextButton(
          label: 'Continue with phone',
          bgColor: colorPalette.yellow400,
          titleColor: colorPalette.black,
          onPress: () {
            AutoRouter.of(context).push(
              const PageRouteInfo('CountryList'),
            );
          },
        ),
      ],
    );
  }
}
