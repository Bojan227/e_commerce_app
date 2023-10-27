import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/help_app_bar_row.dart';
import 'package:ecommerce_app/presentation/ui/widgets/colored_safe_area.dart';
import 'package:ecommerce_app/presentation/ui/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/presentation/ui/widgets/input_field_with_prefix.dart';
import 'package:ecommerce_app/presentation/ui/widgets/text_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PhoneLogin extends StatelessWidget {
  const PhoneLogin({super.key, required this.prefixFlag});

  final String prefixFlag;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return ColoredSafeArea(
      child: Scaffold(
        backgroundColor: colorPalette.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(156),
          child: CustomAppBar(
            children: [
              const HelpAppBarRow(),
              Text(
                'enter your phone number',
                style: textTheme.headlineLarge.copyWith(
                  color: colorPalette.black,
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: InputFieldWithPrefix(
                  Image.asset(prefixFlag),
                  label: 'Phone number',
                  keyboardType: TextInputType.phone,
                  handleInput: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: CustomTextButton(
                  label: 'Continue',
                  bgColor: colorPalette.yellow400,
                  titleColor: colorPalette.black,
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
