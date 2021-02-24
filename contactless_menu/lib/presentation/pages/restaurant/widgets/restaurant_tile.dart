import 'package:auto_route/auto_route.dart';
import 'package:contactless_menu/domain/restaurant/restaurant.dart';
import 'package:contactless_menu/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class RestaurantTile extends StatelessWidget {
  final Restaurant res;
  const RestaurantTile({Key key, @required this.res}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          res.restaurantName.getOrCrash(),
          style: TextStyle(fontSize: 30),
        ),
        subtitle: Text(res.restaurantDescription.getOrCrash()),
        trailing: Icon(Icons.navigate_next),
        onTap: () =>
            ExtendedNavigator.of(context).pushMenuPage(restaurant: res));
  }
}
