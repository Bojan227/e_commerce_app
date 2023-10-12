import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:flutter/material.dart';

class CircleBox extends StatelessWidget {
  final Icon icon;
  final void Function() onTap;
  final Color boxColor;

  const CircleBox({
    super.key,
    required this.icon,
    required this.onTap,
    required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: mainConfig.padding3, horizontal: mainConfig.padding1),
        child: Container(
          width: 36,
          height: 36,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), color: boxColor),
          child: icon,
        ),
      ),
    );
  }
}
