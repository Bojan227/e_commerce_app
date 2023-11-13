import 'dart:io';

import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/presentation/blocs/review/review_bloc.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/add_review_image.dart';
import 'package:ecommerce_app/presentation/ui/widgets/image_input.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddReviewImagesContainer extends StatelessWidget {
  const AddReviewImagesContainer({super.key});

  void onAddImage(File image, BuildContext context) {
    context.read<ReviewBloc>().add(AddReviewImageEvent(image: image));
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return BlocBuilder<ReviewBloc, ReviewState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ImageInput(
                onAddImage: (image) {
                  onAddImage(image, context);
                },
                context: context,
                inputContainer: Container(
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
              ),
              const SizedBox(
                width: 12,
              ),
              for (final image in state.reviewImages)
                AddReviewImage(imagePath: image, onTap: () {})
            ],
          ),
        ),
      );
    });
  }
}
