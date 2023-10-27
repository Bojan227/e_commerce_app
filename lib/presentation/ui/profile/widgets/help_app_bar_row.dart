import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class HelpAppBarRow extends StatelessWidget {
  const HelpAppBarRow({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SizedBox(
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              AutoRouter.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_sharp,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Help',
              style: textTheme.bodyLarge1.copyWith(
                color: colorPalette.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
