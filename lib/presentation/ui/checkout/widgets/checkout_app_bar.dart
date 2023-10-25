import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/blocs/checkout/checkout_steps/checkout_steps_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutAppBar extends StatelessWidget {
  const CheckoutAppBar({super.key, required this.currentStep});

  final int currentStep;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          AutoRouter.of(context).pop();
          context.read<CheckoutStepsCubit>().previousStep();
        },
      ),
      title: Column(
        children: [
          Text(
            'Checkout',
            style: textTheme.bodyLarge1.copyWith(color: colorPalette.black),
          ),
          Text(
            '$currentStep of 3',
            style: textTheme.bodyLarge3.copyWith(color: colorPalette.grey500),
          ),
        ],
      ),
    );
  }
}
