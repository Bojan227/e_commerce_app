import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/blocs/review/rating_cubit/rating_cubit.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/input_field.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/add_review_images_container.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/rating_container.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/send_review_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddReview extends StatelessWidget {
  const AddReview({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return BlocProvider(
      create: (context) => RatingCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'New review',
                style: textTheme.bodyLarge1.copyWith(color: colorPalette.black),
              ),
              leading: IconButton(
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: mainConfig.padding1,
              ),
              child: Column(
                children: [
                  const RatingContainer(),
                  const InputField(
                    label: 'Your review',
                    keyboardType: TextInputType.text,
                  ),
                  const AddReviewImagesContainer(),
                  const SizedBox(
                    height: 24,
                  ),
                  SendReviewButton(
                    label: 'Send review',
                    bgColor: colorPalette.yellow400,
                    titleColor: colorPalette.black,
                    onPress: () {},
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
