import 'package:auto_route/auto_route_annotations.dart';
import 'package:contactless_menu/presentation/pages/restaurant/menu_page.dart';
import 'package:contactless_menu/presentation/pages/restaurant/order_page.dart';
import 'package:contactless_menu/presentation/pages/restaurant/restaurant_page.dart';
import 'package:contactless_menu/presentation/pages/sign_in/sign_in_page.dart';
import 'package:contactless_menu/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: RestaurantPage),
    MaterialRoute(page: MenuPage),
    MaterialRoute(page: OrderPage),
  ],
)
class $Router {}
