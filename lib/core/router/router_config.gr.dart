// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:ecommerce_app/presentation/ui/bag/bag_screen.dart' as _i1;
import 'package:ecommerce_app/presentation/ui/category/category_screen.dart'
    as _i2;
import 'package:ecommerce_app/presentation/ui/home/home_screen.dart' as _i4;
import 'package:ecommerce_app/presentation/ui/main_screen.dart' as _i5;
import 'package:ecommerce_app/presentation/ui/navigation_wrappers/home_nav_wrapper.dart'
    as _i3;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    BagScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BagScreen(),
      );
    },
    CategoryScreen.name: (routeData) {
      final args = routeData.argsAs<CategoryScreenArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CategoryScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    HomeNavWrapper.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeNavWrapper(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    MainScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BagScreen]
class BagScreen extends _i6.PageRouteInfo<void> {
  const BagScreen({List<_i6.PageRouteInfo>? children})
      : super(
          BagScreen.name,
          initialChildren: children,
        );

  static const String name = 'BagScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CategoryScreen]
class CategoryScreen extends _i6.PageRouteInfo<CategoryScreenArgs> {
  CategoryScreen({
    _i7.Key? key,
    required String title,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          CategoryScreen.name,
          args: CategoryScreenArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryScreen';

  static const _i6.PageInfo<CategoryScreenArgs> page =
      _i6.PageInfo<CategoryScreenArgs>(name);
}

class CategoryScreenArgs {
  const CategoryScreenArgs({
    this.key,
    required this.title,
  });

  final _i7.Key? key;

  final String title;

  @override
  String toString() {
    return 'CategoryScreenArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.HomeNavWrapper]
class HomeNavWrapper extends _i6.PageRouteInfo<void> {
  const HomeNavWrapper({List<_i6.PageRouteInfo>? children})
      : super(
          HomeNavWrapper.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavWrapper';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreen extends _i6.PageRouteInfo<void> {
  const HomeScreen({List<_i6.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainScreen]
class MainScreen extends _i6.PageRouteInfo<void> {
  const MainScreen({List<_i6.PageRouteInfo>? children})
      : super(
          MainScreen.name,
          initialChildren: children,
        );

  static const String name = 'MainScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
