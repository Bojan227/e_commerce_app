import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/story/widgets/timeline_row.dart';
import 'package:flutter/material.dart';

class StoryContent extends StatelessWidget {
  const StoryContent({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 250,
            child: Text(
              'glass storage jar with golden lid',
              style: textTheme.titleLarge.copyWith(color: colorPalette.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Hermetic storage jar. Made of glass with a raised slogan detail and a golden screw-on lid. Available in three sizes.',
            style: textTheme.bodyMedium1.copyWith(color: colorPalette.white),
          ),
          const SizedBox(
            height: 32,
          ),
          const TimelineRow()
        ],
      ),
    );
  }
}
