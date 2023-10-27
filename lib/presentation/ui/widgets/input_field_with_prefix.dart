import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/ui/widgets/input_container.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

class InputFieldWithPrefix extends TextFormInputField {
  const InputFieldWithPrefix(this.prefix,
      {super.key,
      required super.label,
      required super.keyboardType,
      required super.handleInput});

  final Widget prefix;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return InputContainer(
      inputColor: colorPalette.grey100,
      child: Row(
        children: [
          prefix,
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormInputField(
              label: label,
              keyboardType: keyboardType,
              handleInput: handleInput,
            ),
          ),
        ],
      ),
    );
  }
}
