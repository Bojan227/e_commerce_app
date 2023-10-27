import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AddressTile extends StatelessWidget {
  const AddressTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final Widget? trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    final bodyMedium =
        textTheme.bodyMedium1.copyWith(color: colorPalette.black);
    final bodyMedium2 =
        textTheme.bodyMedium2.copyWith(color: colorPalette.grey500);
    return SizedBox(
      height: 64,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(
          'lib/core/assets/pin.png',
          width: 24,
          height: 24,
        ),
        title: Text(
          title,
          style: bodyMedium,
        ),
        subtitle: Text(
          subtitle,
          style: bodyMedium2,
        ),
        trailing: trailing,
      ),
    );
  }
}
