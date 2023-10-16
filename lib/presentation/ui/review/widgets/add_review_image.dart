import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class AddReviewImage extends StatelessWidget {
  final String imagePath;
  final void Function() onTap;

  const AddReviewImage({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            height: 64,
            width: 64,
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              width: 16,
              height: 16,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: colorPalette.white.withOpacity(0.7),
              ),
              child: Icon(
                Icons.close,
                color: colorPalette.black,
                size: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
