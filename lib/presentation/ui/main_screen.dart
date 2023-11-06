import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/presentation/ui/home/widgets/bottom_tab.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;

    return AutoTabsRouter(
      routes: const [
        PageRouteInfo('HomeNavWrapper'),
        PageRouteInfo('BagScreen'),
        PageRouteInfo('ProfileScreen'),
        PageRouteInfo('ProfileScreen'),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          backgroundColor: colorPalette.white,
          bottomNavigationBar: BottomTabContainer(tabsRouter: tabsRouter),
          body: child,
        );
      },
    );
  }
}
