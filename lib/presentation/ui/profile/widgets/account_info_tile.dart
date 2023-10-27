import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AccountInfoTile extends StatelessWidget {
  const AccountInfoTile(
      {super.key,
      required this.fullName,
      required this.phone,
      required this.image});

  final String fullName;
  final String phone;
  final String image;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SizedBox(
      height: 64,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          fullName,
          style: textTheme.bodyLarge1.copyWith(color: colorPalette.black),
        ),
        subtitle: Text(
          phone,
          style: textTheme.bodyMedium2.copyWith(
            color: colorPalette.grey500,
          ),
        ),
        leading: Image.asset(image),
      ),
    );
  }
}
