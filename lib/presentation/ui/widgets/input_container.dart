import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  final Color inputColor;
  final Widget child;

  const InputContainer(
      {super.key, required this.inputColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: inputColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
