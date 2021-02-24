// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/restaurant/restaurant.dart';
import '../pages/restaurant/menu_page.dart';
import '../pages/restaurant/order_page.dart';
import '../pages/restaurant/restaurant_page.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String restaurantPage = '/restaurant-page';
  static const String menuPage = '/menu-page';
  static const String orderPage = '/order-page';
  static const all = <String>{
    splashPage,
    signInPage,
    restaurantPage,
    menuPage,
    orderPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.restaurantPage, page: RestaurantPage),
    RouteDef(Routes.menuPage, page: MenuPage),
    RouteDef(Routes.orderPage, page: OrderPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    RestaurantPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const RestaurantPage(),
        settings: data,
      );
    },
    MenuPage: (data) {
      final args = data.getArgs<MenuPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => MenuPage(
          key: args.key,
          restaurant: args.restaurant,
        ),
        settings: data,
      );
    },
    OrderPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OrderPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushRestaurantPage() => push<dynamic>(Routes.restaurantPage);

  Future<dynamic> pushMenuPage({
    Key key,
    @required Restaurant restaurant,
  }) =>
      push<dynamic>(
        Routes.menuPage,
        arguments: MenuPageArguments(key: key, restaurant: restaurant),
      );

  Future<dynamic> pushOrderPage() => push<dynamic>(Routes.orderPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// MenuPage arguments holder class
class MenuPageArguments {
  final Key key;
  final Restaurant restaurant;
  MenuPageArguments({this.key, @required this.restaurant});
}
