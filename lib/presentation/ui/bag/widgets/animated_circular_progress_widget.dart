import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class AnimatedCircularProgressIndicator extends StatefulWidget {
  const AnimatedCircularProgressIndicator({
    super.key,
    required this.notificationDuration,
  });

  final int notificationDuration;

  @override
  State<AnimatedCircularProgressIndicator> createState() =>
      _AnimatedCircularProgressIndicatorState();
}

class _AnimatedCircularProgressIndicatorState
    extends State<AnimatedCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> tweenSeq;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      reverseDuration: const Duration(seconds: 2),
      duration: const Duration(
        seconds: 2,
      ),
    )..addListener(() {
        setState(() {});
      });

    tweenSeq = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0, end: 1.5), weight: 1),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.5, end: 0), weight: 1),
    ]).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return SizedBox(
        height: 24,
        width: 24,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CircularProgressIndicator(
              value: tweenSeq.value,
              color: colorPalette.white,
              backgroundColor: colorPalette.black,
              strokeWidth: 2,
            );
          },
        )

        // TweenAnimationBuilder<double>(
        //   tween: Tween(begin: 0, end: 1),
        //   duration: Duration(seconds: notificationDuration),
        //   builder: (context, value, _) => CircularProgressIndicator(
        //     value: value,
        //     color: colorPalette.white,
        //     backgroundColor: colorPalette.black,
        //     strokeWidth: 2,
        //   ),
        // ),
        );
  }
}
