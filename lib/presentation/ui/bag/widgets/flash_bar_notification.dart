import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/bag/widgets/animated_circular_progress_widget.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

class FlashBarNotificiation extends StatelessWidget {
  const FlashBarNotificiation(
      {super.key,
      required this.controller,
      required this.notificationDuration});

  final FlashController<bool> controller;
  final int notificationDuration;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Align(
      alignment: Alignment.topCenter,
      child: FlashBar(
        elevation: 0,
        controller: controller,
        forwardAnimationCurve: Curves.easeInCirc,
        reverseAnimationCurve: Curves.bounceIn,
        position: FlashPosition.top,
        content: Container(
          decoration: BoxDecoration(
            color: colorPalette.black,
            borderRadius: BorderRadius.circular(8),
          ),
          height: 64,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            children: [
              AnimatedCircularProgressIndicator(
                  notificationDuration: notificationDuration),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  'Item removed',
                  style:
                      textTheme.bodyMedium1.copyWith(color: colorPalette.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  controller.dismiss();
                },
                child: Text(
                  'Cancel',
                  style: textTheme.bodyMedium1.copyWith(
                    color: colorPalette.yellow400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
