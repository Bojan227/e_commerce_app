import 'package:ecommerce_app/core/injector/injector.dart';
import 'package:ecommerce_app/core/router/router_config.dart';
import 'package:ecommerce_app/core/sqflite/sqflite_helper.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/main_config.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:ecommerce_app/presentation/blocs/observers/global_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
  final dbHelper = getIt<SqfHelper>();
  await dbHelper.open();

  final logger = getIt<Logger>();

  Bloc.observer = GlobalBlocObserver(logger: logger);
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
