import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/presentation/blocs/checkout/checkout_steps/checkout_steps_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CheckoutNavWrapper extends StatelessWidget {
  const CheckoutNavWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckoutStepsCubit(),
      child: const AutoRouter(),
    );
  }
}
