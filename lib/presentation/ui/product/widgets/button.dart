import 'package:ecommerce_app/presentation/ui/widgets/custom_button.dart';

class CustomIconButton extends CustomButtonBase {
  const CustomIconButton(
      {super.key,
      required super.label,
      required super.bgColor,
      required super.titleColor,
      required super.icon,
      required super.onPress});

  @override
  void onPressed() {
    onPress();
  }
}
