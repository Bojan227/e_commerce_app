import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ColorChips extends StatelessWidget {
  const ColorChips({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Row(
      children: [
        Chip(
          backgroundColor: colorPalette.black,
          label: Text(
            'Brown',
            style: textTheme.bodyLarge2.copyWith(
              color: colorPalette.white,
            ),
          ),
          avatar: const CircleAvatar(
            backgroundColor: Colors.brown,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Chip(
          backgroundColor: colorPalette.grey300,
          label: Text(
            'Black',
            style: textTheme.bodyLarge2.copyWith(
              color: colorPalette.black,
            ),
          ),
          avatar: const CircleAvatar(
            backgroundColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
