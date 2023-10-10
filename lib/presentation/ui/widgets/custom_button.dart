import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

abstract class CustomButtonBase extends StatelessWidget {
  final String label;
  final Color bgColor;
  final Color titleColor;

  final dynamic icon;
  final void Function() onPress;

  const CustomButtonBase({
    super.key,
    required this.label,
    required this.bgColor,
    required this.titleColor,
    this.icon,
    required this.onPress,
  });

  void onPressed();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 64,
        padding: EdgeInsets.symmetric(horizontal: mainConfig.padding1),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            label,
            style: textTheme.bodyLarge1.copyWith(color: titleColor),
          ),
          const SizedBox(
            width: 8,
          ),
          if (icon != null) icon
        ]),
      ),
    );
  }
}
