import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CountryTile extends StatelessWidget {
  final String title;
  final String flag;
  final void Function() onTap;

  const CountryTile({
    super.key,
    required this.title,
    required this.flag,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    final bodyMedium =
        textTheme.bodyMedium1.copyWith(color: colorPalette.black);

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 64,
        child: ListTile(
          leading: Image.asset(flag),
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: bodyMedium,
          ),
        ),
      ),
    );
  }
}
