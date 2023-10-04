import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/ui/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ulmo E-Commerce',
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        extensions: <ThemeExtension<dynamic>>[
          ColorPalette.light,
          CustomTextTheme.textTheme
        ],
      ),
      home: const MainScreen(),
    );
  }
}
