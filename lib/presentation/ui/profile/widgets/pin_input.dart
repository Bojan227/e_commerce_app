import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/blocs/profile/pin/pin_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PinInput extends StatelessWidget {
  const PinInput({
    super.key,
    required this.focusNodes,
    required this.index,
    this.onSubmit,
    required this.controllers,
    required this.isVerified,
  });

  final bool isVerified;
  final List<FocusNode> focusNodes;
  final List<TextEditingController> controllers;
  final void Function()? onSubmit;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: 48,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: isVerified
              ? Border.all(width: 0, color: Colors.transparent)
              : Border.all(width: 1, color: colorPalette.red300),
          color: colorPalette.grey100,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Center(
          child: TextFormField(
            autofocus: true,
            controller: controllers[index],
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            focusNode: focusNodes[index],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: colorPalette.grey100,
            ),
            cursorColor: colorPalette.black,
            style: textTheme.titleMedium.copyWith(
              color: colorPalette.black,
            ),
            textAlign: TextAlign.center,
            onChanged: (value) {
              if (value.isNotEmpty) {
                context.read<PinBloc>().add(
                      UpdatePin(position: index, value: value),
                    );

                if (index < 4) {
                  focusNodes[index].unfocus();

                  FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                }

                if (onSubmit != null) onSubmit!();
              }
            },
          ),
        ),
      ),
    );
  }
}
