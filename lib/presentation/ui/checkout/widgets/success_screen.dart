import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Scaffold(
      backgroundColor: colorPalette.yellow200,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/core/assets/friendly.png',
                    color: colorPalette.black,
                  ),
                  Text(
                    'your order is placed',
                    style: textTheme.titleLarge.copyWith(
                      color: colorPalette.black,
                    ),
                  ),
                  Text(
                    'thanks for your order, we hope you enjoyed shopping with us',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodyMedium1.copyWith(
                      color: colorPalette.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 2,
                      color: colorPalette.black,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'To my orders',
                      style: textTheme.bodyLarge1
                          .copyWith(color: colorPalette.black),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
