import 'package:ecommerce_app/core/constants/main.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/rating_item.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/review_image_container.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/user_info.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String userImage;
  final String name;
  final String userComment;
  final int userRating;
  final String createdAt;
  final List<String> reviewImages;

  const ReviewCard({
    super.key,
    required this.userImage,
    required this.name,
    required this.userComment,
    required this.userRating,
    required this.createdAt,
    required this.reviewImages,
  });

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Container(
      padding: EdgeInsets.symmetric(vertical: mainConfig.padding1),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      for (int x = reviewConfig['min']!;
                          x <= reviewConfig['max']!;
                          x++)
                        RatingItem(currentRatingValue: userRating, index: x),
                    ],
                  ),
                  Text(
                    createdAt,
                    style: textTheme.bodyMedium2.copyWith(
                      color: colorPalette.grey500,
                    ),
                  )
                ],
              ),
              UserInfo(userImage: userImage, name: name),
              Text(
                userComment,
                style: textTheme.bodyMedium1.copyWith(
                  color: colorPalette.grey500,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ImagesContainer(reviewImages: reviewImages),
            ],
          )
        ],
      ),
    );
  }
}
