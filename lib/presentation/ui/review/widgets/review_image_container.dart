import 'dart:typed_data';

import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:flutter/material.dart';

class ImagesContainer extends StatelessWidget {
  final List<Uint8List> reviewImages;

  const ImagesContainer({super.key, required this.reviewImages});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Row(
      children: reviewImages
          .map(
            (image) => Container(
              height: 54,
              width: 54,
              padding: EdgeInsets.only(right: mainConfig.padding2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.memory(
                  image,
                  height: 54,
                  width: 54,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
