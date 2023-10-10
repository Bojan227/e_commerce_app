import 'package:flutter/material.dart';

class RectSliderThumbShape extends RangeSliderThumbShape {
  /// Create a slider thumb that draws a Rect.
  const RectSliderThumbShape(
      {this.enabledThumbRadius = 10.0,
      this.disabledThumbRadius,
      this.elevation = 1.0,
      this.pressedElevation = 6.0,
      required this.thumbColor});

  /// The preferred radius of the round thumb shape when the slider is enabled.
  ///
  /// If it is not provided, then the Material Design default of 10 is used.
  final double enabledThumbRadius;
  final Color thumbColor;

  /// The preferred radius of the round thumb shape when the slider is disabled.
  ///
  /// If no disabledRadius is provided, then it is equal to the
  /// [enabledThumbRadius]
  final double? disabledThumbRadius;
  double get _disabledThumbRadius => disabledThumbRadius ?? enabledThumbRadius;

  /// The resting elevation adds shadow to the unpressed thumb.
  ///
  /// The default is 1.
  ///
  /// Use 0 for no shadow. The higher the value, the larger the shadow. For
  /// example, a value of 12 will create a very large shadow.
  ///
  final double elevation;

  /// The pressed elevation adds shadow to the pressed thumb.
  ///
  /// The default is 6.
  ///
  /// Use 0 for no shadow. The higher the value, the larger the shadow. For
  /// example, a value of 12 will create a very large shadow.
  final double pressedElevation;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(
        isEnabled == true ? enabledThumbRadius : _disabledThumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      bool? isDiscrete,
      bool? isEnabled,
      bool? isOnTop,
      TextDirection? textDirection,
      required SliderThemeData sliderTheme,
      Thumb? thumb,
      bool? isPressed}) {
    final Canvas canvas = context.canvas;
    // final Tween<double> radiusTween = Tween<double>(
    //   begin: _disabledThumbRadius,
    //   end: enabledThumbRadius,
    // );
    // final ColorTween colorTween = ColorTween(
    //   begin: sliderTheme.disabledThumbColor,
    //   end: sliderTheme.thumbColor,
    // );

    // final Color color = colorTween.evaluate(enableAnimation)!;
    // final double radius = radiusTween.evaluate(enableAnimation);

    // final Tween<double> elevationTween = Tween<double>(
    //   begin: elevation,
    //   end: pressedElevation,
    // );

    // // final double evaluatedElevation =
    // //     elevationTween.evaluate(activationAnimation);
    // final Path path = Path()
    //   ..addArc(Rect.fromCenter(center: center, width: 32, height: 16), 0,
    //       math.pi * 2);

    // bool paintShadows = true;
    // assert(() {
    //   if (debugDisableShadows) {
    //     paintShadows = false;
    //   }
    //   return true;
    // }());

    // if (paintShadows) {
    //   canvas.drawShadow(path, Colors.black, evaluatedElevation, true);
    // }

    final Rect rect = Rect.fromCenter(center: center, width: 32, height: 16);
    final RRect roundedRect = RRect.fromRectAndRadius(
      rect,
      const Radius.circular(4), // Adjust the radius as needed
    );

    // Use drawRect instead of drawCircle
    canvas.drawRRect(
        roundedRect,
        Paint()
          ..color = thumbColor
          ..style = PaintingStyle.fill);
  }
}
