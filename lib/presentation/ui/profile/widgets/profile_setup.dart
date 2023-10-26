import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/widgets/image_input.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/input_list.dart';
import 'package:flutter/material.dart';

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    final appBarTextStyle =
        textTheme.bodyLarge1.copyWith(color: colorPalette.black);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set up your profile',
          style: appBarTextStyle,
        ),
        centerTitle: true,
        actions: [
          Text(
            'Skip',
            style: appBarTextStyle,
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [ImageInput(), InputList()],
        ),
      ),
    );
  }
}
