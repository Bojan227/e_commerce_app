import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class TimelineWidget extends StatelessWidget {
  final bool isStoryActive;
  final bool isStoryShown;

  final AnimationController controller;

  const TimelineWidget(
      {super.key,
      required this.controller,
      required this.isStoryActive,
      required this.isStoryShown});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return SizedBox(
      width: 109,
      height: 2,
      child: LinearProgressIndicator(
        value: isStoryActive ? controller.value : 0,
        backgroundColor: isStoryShown
            ? colorPalette.white
            : colorPalette.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(2),
        minHeight: 2,
        color: colorPalette.white,
      ),
    );
  }
}
