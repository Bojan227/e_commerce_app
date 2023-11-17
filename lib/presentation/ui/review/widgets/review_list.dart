import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/presentation/blocs/review/review_bloc.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/review_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Builder(
      builder: (context) {
        return BlocBuilder<ReviewBloc, ReviewState>(
          builder: (context, state) {
            if (state.status == Status.loading) {
              const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state.status == Status.failed) {
              return const Center(
                child: Text('Please try again!'),
              );
            }

            if (state.status == Status.loaded) {
              if (state.reviews.isEmpty) {
                return const Center(
                  child: Text('No Reviews'),
                );
              }

              return Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: mainConfig.padding2),
                  child: SingleChildScrollView(
                    child: Column(
                      children: state.reviews
                          .map(
                            (review) => ReviewCard(
                              userImage: 'lib/core/assets/user.png',
                              name: review.user.fullName,
                              userComment: review.userReview,
                              userRating: review.rating,
                              createdAt: review.createdAt.toIso8601String(),
                              reviewImages: review.reviewImages,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              );
            }

            return Container();
          },
        );
      },
    );
  }
}
