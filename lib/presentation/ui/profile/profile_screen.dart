import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/account.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/empty_account.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/my_account_scaffold.dart';

import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return MyAccountScaffold(
      body: Account(),
    );
  }
}
