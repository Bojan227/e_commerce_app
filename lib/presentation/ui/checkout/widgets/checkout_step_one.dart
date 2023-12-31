import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/blocs/checkout/checkout_steps/checkout_steps_cubit.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/main_scaffold.dart';
import 'package:ecommerce_app/presentation/ui/widgets/column_with_spacing.dart';
import 'package:ecommerce_app/presentation/ui/widgets/input_field.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutStepOne extends StatelessWidget {
  const CheckoutStepOne({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    final titleLarge = textTheme.titleLarge.copyWith(color: colorPalette.black);

    return MainScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'contact info',
              style: titleLarge,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ColumnWithSpacing(
                spacing: 16,
                children: [
                  const SizedBox(
                    height: 24,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: CustomTextButton(
              label: 'Continue',
              bgColor: colorPalette.yellow400,
              titleColor: colorPalette.black,
              onPress: () {
                AutoRouter.of(context).push(
                  const PageRouteInfo('CheckoutStepTwo'),
                );

                context.read<CheckoutStepsCubit>().nextStep();
              },
            ),
          ),
        ],
      ),
    );
  }
}
