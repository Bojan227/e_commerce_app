import 'package:ecommerce_app/presentation/ui/widgets/custom_button.dart';

class SendReviewButton extends CustomButtonBase {
  const SendReviewButton(
      {super.key,
      required super.label,
      required super.bgColor,
      required super.titleColor,
      super.icon,
      required super.onPress});

  @override
  void onPressed() {
    onPress();
  }
}
