import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/help_app_bar_row.dart';
import 'package:ecommerce_app/presentation/ui/widgets/colored_safe_area.dart';
import 'package:ecommerce_app/presentation/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SmsCodeScreen extends StatelessWidget {
  const SmsCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return ColoredSafeArea(
      child: Scaffold(
        backgroundColor: colorPalette.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(114),
          child: CustomAppBar(
            children: [
              const HelpAppBarRow(),
              Container(
                padding: const EdgeInsets.only(bottom: 16),
                child: Column(
                  children: [
                    Text(
                      'welcome! enter code from sms',
                      style: textTheme.headlineLarge
                          .copyWith(color: colorPalette.black),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'We sent it to +7 912 323-32-12',
                      style: textTheme.bodyMedium1
                          .copyWith(color: colorPalette.grey500),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
