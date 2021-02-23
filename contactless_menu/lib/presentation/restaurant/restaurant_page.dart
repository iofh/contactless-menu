import 'package:auto_route/auto_route.dart';
import 'package:contactless_menu/application/auth/auth_bloc.dart';
import 'package:contactless_menu/application/restaurant/restaurant_bloc.dart';
import 'package:contactless_menu/injectable.dart';
import 'package:contactless_menu/presentation/core/sliver_header_delegate.dart';
import 'package:contactless_menu/presentation/restaurant/widgets/restaurant_sliver_wid.dart';
import 'package:contactless_menu/presentation/restaurant/widgets/testingfirebaseconnection.dart';
import 'package:contactless_menu/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key key}) : super(key: key);

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RestaurantBloc>(
          create: (context) => getIt<RestaurantBloc>()
            ..add(const RestaurantEvent.displayAllStarted()),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    ExtendedNavigator.of(context).replace(Routes.signInPage),
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          // body: TestingConnection(),
          body: RestaurantSliverWid(),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.food_bank),
                label: 'Restaurant',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app),
                label: 'SignOut',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.purple[100],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          ExtendedNavigator.of(context).replace(Routes.restaurantPage);
          break;
        case 1:
          ExtendedNavigator.of(context).replace(Routes.splashPage);
          break;
        case 2:
          context.read<AuthBloc>().add(const AuthEvent.signedOut());
          break;
      }
    });
  }
}
