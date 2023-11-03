import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignOutScreen extends StatelessWidget {
  const SignOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Material(
      color: colorPalette.black.withOpacity(
        0.7,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Container(
            width: 280,
            height: 291,
            padding: const EdgeInsets.only(
              top: 32,
              right: 16,
              left: 16,
              bottom: 16,
            ),
            decoration: BoxDecoration(
              color: colorPalette.white,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'are you sure you want to sign out?',
                  style: textTheme.titleLarge.copyWith(
                    color: colorPalette.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'We definitely don\'t want that',
                  style: textTheme.bodyMedium1.copyWith(
                    color: colorPalette.grey500,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTextButton(
                  label: 'No, I want to stay',
                  bgColor: colorPalette.yellow400,
                  titleColor: colorPalette.black,
                  onPress: () {
                    AutoRouter.of(context).pop();
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextButton(
                  label: 'Yep, sign out',
                  bgColor: colorPalette.grey100,
                  titleColor: colorPalette.black,
                  onPress: () {
                    AutoRouter.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
