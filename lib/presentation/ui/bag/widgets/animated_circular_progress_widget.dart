import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator(
      {super.key, required this.notificationDuration});

  final int notificationDuration;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return SizedBox(
      height: 24,
      width: 24,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: 1),
        duration: Duration(seconds: notificationDuration),
        builder: (context, value, _) => CircularProgressIndicator(
          value: value,
          color: colorPalette.white,
          backgroundColor: colorPalette.black,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
