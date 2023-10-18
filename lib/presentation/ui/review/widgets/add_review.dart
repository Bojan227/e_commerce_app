import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/injector/injector.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/domain/entities/new_review.dart';
import 'package:ecommerce_app/presentation/blocs/review/rating_cubit/rating_cubit.dart';
import 'package:ecommerce_app/presentation/blocs/review/review_bloc.dart';

import 'package:ecommerce_app/presentation/ui/widgets/input_field.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/add_review_images_container.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/rating_container.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/send_review_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddReview extends StatelessWidget {
  AddReview({super.key});

  String userReview = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void handleSubmit(BuildContext context, int rating) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final newReview = NewReview(
        rating: rating,
        userReview: userReview,
        reviewImages: [],
        userId: 1,
        productId: 1,
      );

      BlocProvider.of<ReviewBloc>(context).add(
        AddReviewEvent(newReview: newReview),
      );
    }
  }

  final reviewBloc = getIt<ReviewBloc>();

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => RatingCubit(),
        ),
        BlocProvider.value(
          value: reviewBloc,
        ),
      ],
      child: Builder(
        builder: (context) {
          final int currentRatingValue = context.watch<RatingCubit>().state;
          final Status newReviewStatus =
              context.watch<ReviewBloc>().state.newReviewStatus;
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
            body: BlocListener<ReviewBloc, ReviewState>(
              listener: (_, state) {
                if (state.newReviewStatus == Status.loaded) {
                  context.read<ReviewBloc>().add(
                        GetReviews(productId: '1'),
                      );

                  _formKey.currentState!.reset();
                }
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mainConfig.padding1,
                ),
                child: Column(
                  children: [
                    const RatingContainer(),
                    Form(
                      key: _formKey,
                      child: InputField(
                        label: 'Your review',
                        keyboardType: TextInputType.text,
                        handleInput: (value) => userReview = value,
                      ),
                    ),
                    const AddReviewImagesContainer(),
                    const SizedBox(
                      height: 24,
                    ),
                    SendReviewButton(
                      label: newReviewStatus == Status.loading
                          ? 'Submitting...'
                          : 'Send review',
                      bgColor: colorPalette.yellow400,
                      titleColor: colorPalette.black,
                      onPress: () {
                        if (currentRatingValue == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Enter your star rating',
                              ),
                            ),
                          );
                        } else {
                          handleSubmit(context, currentRatingValue);
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
