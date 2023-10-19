import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/injector/injector.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/blocs/review/review_bloc.dart';
import 'package:ecommerce_app/presentation/ui/review/widgets/review_list.dart';
import 'package:ecommerce_app/presentation/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key, @PathParam('id') required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    final appBarTextStyle =
        textTheme.bodyLarge1.copyWith(color: colorPalette.black);

    final reviewBloc = getIt<ReviewBloc>();

    return BlocProvider.value(
      value: reviewBloc
        ..add(
          GetReviews(productId: productId),
        ),
      child: Scaffold(
        backgroundColor: colorPalette.white,
        appBar: AppBar(
          backgroundColor: colorPalette.white,
          title: Text(
            'Reviews',
            style: appBarTextStyle,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(const PageRouteInfo('AddReview'));
                },
                child: Text(
                  'New Review',
                  style: appBarTextStyle,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: mainConfig.padding1, vertical: mainConfig.padding2),
          child: const Column(
            children: [
              SearchBarWidget(),
              ReviewList(),
            ],
          ),
        ),
      ),
    );
  }
}
