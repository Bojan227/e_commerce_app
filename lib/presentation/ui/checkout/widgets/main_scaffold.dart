import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/presentation/blocs/checkout/checkout_steps/checkout_steps_cubit.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/checkout_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final mainConfig = Theme.of(context).extension<MainConfig>()!;
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Scaffold(
      backgroundColor: colorPalette.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: BlocBuilder<CheckoutStepsCubit, CheckoutStepsState>(
          builder: (context, state) {
            return CheckoutAppBar(
              currentStep: state.currentStep,
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mainConfig.padding1),
        child: body,
      ),
    );
  }
}
