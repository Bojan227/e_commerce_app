import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/filter/widgets/rect_thumb_shape.dart';
import 'package:flutter/material.dart';

const min = 0.00;
const max = 700.00;

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  RangeValues currentRangeValues = const RangeValues(min, max);

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$${min.toInt()}',
              style: textTheme.bodyLarge1.copyWith(color: colorPalette.black),
            ),
            Text(
              '\$${max.toInt()}',
              style: textTheme.bodyLarge1.copyWith(color: colorPalette.black),
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        SliderTheme(
          data: SliderThemeData(
            trackHeight: 2,
            inactiveTrackColor: colorPalette.grey200,
            rangeThumbShape:
                RectSliderThumbShape(thumbColor: colorPalette.yellow400),
          ),
          child: RangeSlider(
            activeColor: colorPalette.yellow400,
            divisions: 7,
            min: min,
            max: max,
            values: currentRangeValues,
            onChanged: (RangeValues values) {
              setState(() {
                currentRangeValues = values;
              });
            },
          ),
        )
      ],
    );
  }
}
