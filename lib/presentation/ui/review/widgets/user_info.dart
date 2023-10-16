import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String userImage;
  final String name;

  const UserInfo({super.key, required this.userImage, required this.name});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 2),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(userImage),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              name,
              style: textTheme.bodyLarge1.copyWith(color: colorPalette.black),
            ),
          ),
        ],
      ),
    );
  }
}
