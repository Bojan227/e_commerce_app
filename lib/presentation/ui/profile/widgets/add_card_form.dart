import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/ui/widgets/input_field.dart';
import 'package:ecommerce_app/presentation/ui/widgets/input_field_with_prefix_and_trailing.dart';
import 'package:flutter/material.dart';

class AddCardForm extends StatelessWidget {
  const AddCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          InputFieldWithPrefixAndTrailing(
            const Icon(Icons.credit_card_sharp),
            Image.asset('lib/core/assets/mastercard.png'),
            label: 'Card number',
            keyboardType: TextInputType.number,
            handleInput: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: InputField(
                  label: 'Expiry date',
                  keyboardType: TextInputType.text,
                  handleInput: (value) {},
                  bgColor: colorPalette.grey100,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: InputField(
                  label: 'CVC/CVV',
                  keyboardType: TextInputType.visiblePassword,
                  handleInput: (value) {},
                  bgColor: colorPalette.grey100,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          InputField(
            label: 'Name on card',
            keyboardType: TextInputType.name,
            handleInput: (value) {},
            bgColor: colorPalette.grey100,
          ),
        ],
      ),
    );
  }
}
