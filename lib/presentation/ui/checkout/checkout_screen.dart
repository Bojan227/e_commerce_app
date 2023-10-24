import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/checkout_step_two.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final mainConfig = Theme.of(context).extension<MainConfig>()!;

    return Scaffold(
      backgroundColor: colorPalette.white,
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Checkout',
              style: textTheme.bodyLarge1.copyWith(color: colorPalette.black),
            ),
            Text(
              '1 of 3',
              style: textTheme.bodyLarge3.copyWith(color: colorPalette.grey500),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mainConfig.padding1,
        ),
        child: const CheckoutStepTwo(),
      ),
    );
  }
}
