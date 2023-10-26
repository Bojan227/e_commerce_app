import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/profile_setup.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return Container(
      decoration: BoxDecoration(color: colorPalette.white),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ProfileSetup(),
    );
  }
}
