import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/add_review_image.dart';
import 'package:flutter/material.dart';

class AddReviewImagesContainer extends StatelessWidget {
  const AddReviewImagesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: mainConfig.padding2),
      child: Row(
        children: [
          Container(
            height: 64,
            padding: EdgeInsets.symmetric(
              horizontal: mainConfig.padding1,
            ),
            decoration: BoxDecoration(color: colorPalette.grey100),
            child: Icon(
              Icons.camera_alt_outlined,
              color: colorPalette.black,
              size: 24,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          AddReviewImage(
            imagePath: 'lib/core/assets/review_img_1.png',
            onTap: () {},
          ),
          const SizedBox(
            width: 12,
          ),
          AddReviewImage(
            imagePath: 'lib/core/assets/review_img_2.png',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
