import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ActionItem extends StatelessWidget {
  final String text;
  final dynamic action;
  final void Function() onTap;

  const ActionItem(
      {super.key, required this.onTap, required this.text, this.action});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 64,
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style:
                    textTheme.bodyMedium1.copyWith(color: colorPalette.black),
              ),
            ),
            action
          ],
        ),
      ),
    );
  }
}
