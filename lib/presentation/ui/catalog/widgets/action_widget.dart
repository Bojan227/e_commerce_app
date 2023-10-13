import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  final String shape;

  const ActionWidget(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.shape});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: colorPalette.grey100,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: textTheme.bodyLarge2.copyWith(color: colorPalette.black),
            ),
            const SizedBox(
              width: 4,
            ),
            Image.asset(
              shape,
              width: 18,
              height: 18,
              color: colorPalette.black,
            )
          ],
        ),
      ),
    );
  }
}
