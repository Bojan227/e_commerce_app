import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/review_card.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: mainConfig.padding2),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            ReviewCard(
              createdAt: 'Today, 12:30 pm',
              name: 'Erin Mango',
              userComment: "Everything is good. Nice quality",
              userImage: 'lib/core/assets/rating_1.png',
              userRating: 4,
              reviewImages: [
                'lib/core/assets/rating_4.png',
                'lib/core/assets/rating_5.png',
                'lib/core/assets/rating_6.png',
              ],
            ),
            ReviewCard(
              createdAt: '1 month ago',
              name: 'Corey Rosser',
              userComment: "Could be better :(",
              userImage: 'lib/core/assets/rating_2.png',
              userRating: 3,
              reviewImages: [],
            ),
            ReviewCard(
              createdAt: '2 months ago',
              name: 'Paityn Saris',
              userComment:
                  "Bought this table 2 months ago and I wanted to say, this is the best bedside table I’ve ever used 😍",
              userImage: 'lib/core/assets/rating_3.png',
              userRating: 5,
              reviewImages: [],
            ),
          ],
        ),
      ),
    );
  }
}
