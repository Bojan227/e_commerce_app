import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/ui/widgets/input_container.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

class InputField extends TextFormInputField {
  const InputField({
    super.key,
    required super.label,
    required super.keyboardType,
    required super.handleInput,
    this.bgColor,
  });

  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    return InputContainer(
      inputColor: bgColor ?? colorPalette.grey300,
      child: TextFormInputField(
        label: label,
        keyboardType: keyboardType,
        handleInput: handleInput,
      ),
    );
  }
}
