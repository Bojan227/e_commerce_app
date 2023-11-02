import 'package:ecommerce_app/core/constants/main.dart';
import 'package:ecommerce_app/presentation/blocs/profile/pin/pin_bloc.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/pin_input.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/sms_code_timer.dart';
import 'package:flutter/material.dart';

class PinScreen extends StatelessWidget {
  const PinScreen(
      {super.key,
      required this.formKey,
      required this.controllers,
      required this.focusNodes,
      required this.onSubmit,
      required this.pinStatus});

  final GlobalKey<FormState> formKey;
  final List<TextEditingController> controllers;
  final List<FocusNode> focusNodes;
  final void Function(BuildContext context) onSubmit;
  final Status pinStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Form(
            key: formKey,
            child: Row(
              children: List.generate(
                maxPinNumber,
                (index) => PinInput(
                  isVerified: pinStatus == Status.verified,
                  controllers: controllers,
                  focusNodes: focusNodes,
                  index: index,
                  onSubmit: () {
                    onSubmit(context);
                  },
                ),
              ),
            ),
          ),
          const SmsCodeTimer()
        ],
      ),
    );
  }
}
