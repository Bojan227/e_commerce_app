import 'package:auto_route/auto_route.dart';

import 'router_config.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainScreen.page, path: '/', children: [
          AutoRoute(page: HomeNavWrapper.page, children: [
            AutoRoute(page: HomeScreen.page, path: 'home', initial: true),
            AutoRoute(
              page: CategoryScreen.page,
              path: 'category',
            ),
            AutoRoute(page: CatalogScreen.page, path: 'catalog'),
            AutoRoute(page: ProductScreen.page, path: 'product/:id')
          ]),
          AutoRoute(
            page: BagScreen.page,
            path: 'bag',
          )
        ]),
      ];
}
