import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final void Function(String value) handleInput;

  const InputField({
    super.key,
    required this.label,
    required this.keyboardType,
    required this.handleInput,
  });

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        height: 64,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: colorPalette.grey300,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          keyboardType: keyboardType,
          cursorColor: colorPalette.black,
          style: textTheme.bodyMedium1.copyWith(color: colorPalette.black),
          decoration: InputDecoration(
            labelStyle: textTheme.bodyMedium2.copyWith(
              color: colorPalette.grey500,
            ),
            border: InputBorder.none,
            labelText: label,
            fillColor: colorPalette.grey300,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          onSaved: (newValue) => handleInput(newValue!),
        ),
      ),
    );
  }
}
