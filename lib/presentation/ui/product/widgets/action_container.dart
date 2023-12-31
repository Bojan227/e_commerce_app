import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/router/router_config.gr.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/action_item.dart';
import 'package:ecommerce_app/presentation/ui/product/widgets/product_info_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ActionContainer extends StatelessWidget {
  const ActionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Container(
      padding: EdgeInsets.only(
        left: mainConfig.padding1,
        right: mainConfig.padding1,
        top: mainConfig.padding2,
        bottom: mainConfig.padding1,
      ),
      decoration: BoxDecoration(color: colorPalette.white),
      child: Column(
        children: [
          ActionItem(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                isDismissible: false,
                context: context,
                builder: (context) {
                  return const FractionallySizedBox(
                    heightFactor: 0.9,
                    child: ProductInfoBottomSheet(),
                  );
                },
              );
            },
            text: "Product information",
            action: Icon(
              Icons.arrow_forward_ios,
              color: colorPalette.black,
            ),
          ),
          ActionItem(
            onTap: () {
              AutoRouter.of(context).push(
                const PageRouteInfo(
                  'ReviewScreen',
                  args: ReviewScreenArgs(productId: '1'),
                ),
              );
            },
            text: "Reviews",
            action: Text(
              '32',
              style:
                  textTheme.bodyMedium1.copyWith(color: colorPalette.grey500),
            ),
          ),
        ],
      ),
    );
  }
}
