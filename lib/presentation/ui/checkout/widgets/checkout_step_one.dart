import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/widgets/input_field.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_button.dart';
import 'package:flutter/material.dart';

class CheckoutStepOne extends StatelessWidget {
  const CheckoutStepOne({super.key});

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
                'contact info',
                style: titleLarge,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            InputField(
              label: 'Full name',
              keyboardType: TextInputType.text,
              handleInput: (value) {},
            ),
            InputField(
              label: 'Phone',
              keyboardType: TextInputType.text,
              handleInput: (value) {},
            ),
            InputField(
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
              handleInput: (value) {},
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: CustomTextButton(
            label: 'Continue',
            bgColor: colorPalette.yellow400,
            titleColor: colorPalette.black,
            onPress: () {},
          ),
        ),
      ],
    );
  }
}
