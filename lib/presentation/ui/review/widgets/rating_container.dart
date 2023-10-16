import 'package:ecommerce_app/core/constants/main.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/blocs/rating_cubit/rating_cubit.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    final int currentRatingValue = context.watch<RatingCubit>().state;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int index = reviewConfig['min']!;
                  index <= reviewConfig['max']!;
                  index++)
                GestureDetector(
                  onTap: () {
                    context.read<RatingCubit>().updateRating(index);
                  },
                  child: RatingItem(
                    currentRatingValue: currentRatingValue,
                    index: index,
                    iconSize: 32,
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            reviewStates[currentRatingValue],
            style: textTheme.bodyLarge1.copyWith(
              color: colorPalette.grey500,
            ),
          ),
        ],
      ),
    );
  }
}
