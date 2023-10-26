import 'package:ecommerce_app/presentation/ui/widgets/input_field.dart';
import 'package:flutter/material.dart';

class InputList extends StatelessWidget {
  const InputList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          InputField(
            label: 'Full name',
            keyboardType: TextInputType.text,
            handleInput: (value) {},
          ),
          InputField(
            label: 'Phone',
            keyboardType: TextInputType.phone,
            handleInput: (value) {},
          ),
          InputField(
            label: 'Email',
            keyboardType: TextInputType.emailAddress,
            handleInput: (value) {},
          ),
          InputField(
            label: 'Date of birth',
            keyboardType: TextInputType.datetime,
            handleInput: (value) {},
          )
        ],
      ),
    );
  }
}
