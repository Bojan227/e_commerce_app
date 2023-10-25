import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/blocs/checkout/checkout_steps/checkout_steps_cubit.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/delivery_address.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/delivery_options.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/delivery_time_options.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/main_scaffold.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CheckoutStepTwo extends StatelessWidget {
  const CheckoutStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return MainScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'delivery method',
                style: textTheme.titleLarge.copyWith(color: colorPalette.black),
              ),
            ),
            const DeliveryOptions(),
            const DeliveryAddress(),
            const DeliveryTimeOptions(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, top: 48),
              child: CustomTextButton(
                label: 'Continue',
                bgColor: colorPalette.yellow400,
                titleColor: colorPalette.black,
                onPress: () {
                  AutoRouter.of(context).push(
                    const PageRouteInfo('CheckoutStepThree'),
                  );
                  context.read<CheckoutStepsCubit>().nextStep();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
