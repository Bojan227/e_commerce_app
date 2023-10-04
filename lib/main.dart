import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      home: Container(),
    );
  }
}
