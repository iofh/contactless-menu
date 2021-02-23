import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:contactless_menu/presentation/core/sliver_header_delegate.dart';
import 'package:contactless_menu/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

enum NavIndexStatus {
  restaurant,
  search,
  profile,
}

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key key}) : super(key: key);

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: false,
            delegate: SliverHeaderDelegate(
              minHeight: MediaQuery.of(context).size.height * 0.1,
              maxHeight: MediaQuery.of(context).size.height * 0.2,
              child: Container(
                child: Center(child: Text('Contacless Menu')),
                color: Theme.of(context).appBarTheme.color,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: MediaQuery.of(context).size.height * 0.18,
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.red),
                Container(color: Colors.purple),
                Container(color: Colors.green),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
                Container(color: Colors.green),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
                Container(color: Colors.green),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
              ],
            ),
          ),
        ],
      ),
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
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[100],
        onTap: _onItemTapped,
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
          ExtendedNavigator.of(context).replace(Routes.restaurantPage);
          break;
        default:
          ExtendedNavigator.of(context).replace(Routes.splashPage);
          break;
      }
    });
  }
}
