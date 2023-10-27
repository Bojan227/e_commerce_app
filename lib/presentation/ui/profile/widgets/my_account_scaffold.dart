import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyAccountScaffold extends StatelessWidget {
  const MyAccountScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return SafeArea(
      child: Scaffold(
        backgroundColor: colorPalette.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(114),
          child: CustomAppBar(
            children: [
              const SizedBox(
                height: 56,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.settings),
                ),
              ),
              Container(
                height: 58,
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'my account',
                  style: textTheme.headlineLarge
                      .copyWith(color: colorPalette.black),
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: body,
        ),
      ),
    );
  }
}
