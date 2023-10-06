import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/product_app_bar.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/product_info.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, @PathParam('id') required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;
    final colorPaletter = Theme.of(context).extension<ColorPalette>()!;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ProductAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: mainConfig.screenPadding),
                  decoration: BoxDecoration(color: colorPaletter.grey100),
                  child: const ProductInfo(
                      price: 150.00,
                      description:
                          "Wooden bedside table featuring a raised design on the door"),
                );
              },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}
