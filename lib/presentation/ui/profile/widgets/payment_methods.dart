import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/add_payment_method.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Scaffold(
      backgroundColor: colorPalette.white,
      appBar: AppBar(
        title: Text(
          'Payment methods',
          style: textTheme.bodyLarge1.copyWith(
            color: colorPalette.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextButton(
                label: 'Add new payment method',
                bgColor: colorPalette.grey100,
                titleColor: colorPalette.black,
                onPress: () {
                  Navigator.of(context).push(
                    ModalBottomSheetRoute(
                      builder: (context) => const FractionallySizedBox(
                        heightFactor: 0.9,
                        child: AddPaymentMethod(),
                      ),
                      isScrollControlled: true,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
