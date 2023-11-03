import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/add_card_form.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddPaymentMethod extends StatelessWidget {
  const AddPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            AutoRouter.of(context).pop();
          },
          child: const Icon(
            Icons.close,
          ),
        ),
      ),
      backgroundColor: colorPalette.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'new card',
                style:
                    textTheme.headlineLarge.copyWith(color: colorPalette.black),
              ),
              const SizedBox(
                height: 16,
              ),
              const AddCardForm(),
              const SizedBox(
                height: 16,
              ),
              CustomTextButton(
                label: 'Save card',
                bgColor: colorPalette.yellow400,
                titleColor: colorPalette.black,
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
