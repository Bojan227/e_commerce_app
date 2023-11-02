import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/help_app_bar_row.dart';
import 'package:ecommerce_app/presentation/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PinAppBar extends StatelessWidget {
  const PinAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return CustomAppBar(
      children: [
        const HelpAppBarRow(),
        Container(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'welcome!',
                style:
                    textTheme.headlineLarge.copyWith(color: colorPalette.black),
              ),
              Text(
                'enter code from sms',
                style:
                    textTheme.headlineLarge.copyWith(color: colorPalette.black),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'We sent it to +7 912 323-32-12',
                style:
                    textTheme.bodyMedium1.copyWith(color: colorPalette.grey500),
              )
            ],
          ),
        )
      ],
    );
  }
}
