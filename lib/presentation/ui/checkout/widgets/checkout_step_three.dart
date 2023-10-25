import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/payment_methods.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_button.dart';
import 'package:flutter/material.dart';

class CheckoutStepThree extends StatelessWidget {
  const CheckoutStepThree({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    final titleLarge = textTheme.titleLarge.copyWith(color: colorPalette.black);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'payment method',
                style: titleLarge,
              ),
            ),
            const PaymentMethods(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: CustomTextButton(
            label: 'Pay \$420,50',
            bgColor: colorPalette.yellow400,
            titleColor: colorPalette.black,
            onPress: () {},
          ),
        ),
      ],
    );
  }
}
