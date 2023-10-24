import 'package:ecommerce_app/presentation/ui/widgets/custom_button.dart';

class ContinueButton extends CustomButtonBase {
  const ContinueButton(
      {super.key,
      required super.label,
      required super.bgColor,
      required super.titleColor,
      super.icon,
      required super.onPress});

  @override
  void onPressed() => onPress();
}
