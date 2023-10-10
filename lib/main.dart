import 'package:ecommerce_app/core/router/router_config.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(
          // deepLinkBuilder: (deepLink) {

          //   if (deepLink.path.startsWith('/product')) {
          //     print(deepLink.path);
          //     return DeepLink.single(
          //       const PageRouteInfo(
          //         'ProductScreen',
          //         args: ProductScreenArgs(productId: '1'),
          //       ),
          //     );
          //   } else {
          //     return const DeepLink.path('/');
          //   }
          // },
          ),
      title: 'Ulmo E-Commerce',
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        extensions: <ThemeExtension<dynamic>>[
          ColorPalette.light,
          CustomTextTheme.textTheme,
          MainConfig.mainConfig
        ],
      ),
    );
  }
}
