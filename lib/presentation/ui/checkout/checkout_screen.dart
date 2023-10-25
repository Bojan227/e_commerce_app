import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/presentation/ui/checkout/widgets/checkout_step_one.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CheckoutStepOne();
  }
}
