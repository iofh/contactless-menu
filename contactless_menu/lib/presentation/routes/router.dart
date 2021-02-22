import 'package:auto_route/auto_route_annotations.dart';
import 'package:contactless_menu/presentation/menu/menu_page.dart';
import 'package:contactless_menu/presentation/pages/sign_in/sign_in_page.dart';
import 'package:contactless_menu/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(
      page: SignInPage,
    ),
    MaterialRoute(
      page: MenuPage,
    ),
  ],
)
class $Router {}
