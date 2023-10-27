import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  final String title;
  final IconData leading;
  final void Function() onTap;
  final String? trailing;

  const AccountTile({
    super.key,
    required this.title,
    required this.leading,
    this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 64,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: textTheme.bodyMedium1.copyWith(
              color: colorPalette.black,
            ),
          ),
          trailing: trailing != null
              ? Text(
                  trailing!,
                  style: textTheme.bodyMedium1.copyWith(
                    color: colorPalette.grey500,
                  ),
                )
              : null,
          leading: Icon(
            leading,
            color: colorPalette.black,
          ),
        ),
      ),
    );
  }
}
