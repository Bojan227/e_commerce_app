import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/widgets/checkmark.dart';
import 'package:flutter/material.dart';

class DeliveryOptionCard extends StatelessWidget {
  const DeliveryOptionCard(
      {super.key,
      required this.iconPath,
      required this.title,
      required this.subTitle,
      required this.isSelected});

  final String iconPath;
  final String title;
  final String subTitle;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SizedBox(
      height: 64,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(iconPath),
        title: Text(
          title,
          style: textTheme.bodyMedium1.copyWith(color: colorPalette.black),
        ),
        subtitle: Text(
          subTitle,
          style: textTheme.bodyMedium2.copyWith(color: colorPalette.grey500),
        ),
        trailing: isSelected
            ? const CheckMarkWidget()
            : Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: colorPalette.grey100,
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
      ),
    );
  }
}
