import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:contactless_menu/application/restaurant/order/bloc/order_bloc.dart';
import 'package:contactless_menu/domain/restaurant/menu_item.dart';
import 'package:contactless_menu/domain/restaurant/primitive_menu_model.dart';
import 'package:contactless_menu/domain/restaurant/restaurant.dart';
import 'package:contactless_menu/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class MenuPage extends StatelessWidget {
  final Restaurant restaurant;
  const MenuPage({Key key, @required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.restaurantName.getOrCrash()),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                return Badge(
                  animationType: BadgeAnimationType.scale,
                  badgeContent:
                      Text(state.ordersModel.menuModel.length.toString()),
                  child: InkWell(
                    child: Icon(Icons.shop),
                    onTap: () {
                      ExtendedNavigator.of(context).pushOrderPage();
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.2),
              child: Text(restaurant.restaurantDescription.getOrCrash()),
            ),
            if (restaurant.menuList.length > 0) ...[
              Wrap(
                spacing: 8,
                children: <Widget>[
                  const ListTile(
                    title: Text(
                      "Menu",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  ...restaurant.menuList
                      .getOrCrash()
                      .map((menu) => MenuTile(
                            menuItem: menu,
                          ))
                      .iter
                ],
              ),
            ] else
              const ListTile(
                title: Text(
                  "No Menu Yet",
                  style: TextStyle(fontSize: 30),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final MenuItem menuItem;
  const MenuTile({Key key, @required this.menuItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MenuItemModel menuModel = MenuItemModel.fromValueObject(menuItem);

    return ListTile(
      leading: InkWell(
        onTap: () {
          context.read<OrderBloc>().add(AddOrderEvent(menuModel));
          _showSimpleFlushbar(context, menuModel.menuTitle);
        },
        child: Container(
            child: Column(
          children: [const Icon(Icons.add), const Text('Select')],
        )),
      ),
      title: Text(menuItem.menuTitle.getOrCrash()),
      subtitle: Text(menuItem.menuDescription.getOrCrash()),
      trailing: Text('\$ ${menuItem.menuPrice.getOrCrash()}'),
    );
  }
}

void _showSimpleFlushbar(BuildContext context, String menu) {
  Flushbar(
    message: 'Added $menu',
    mainButton: FlatButton(
      child: Text(
        'View Orders',
        style: TextStyle(color: Theme.of(context).accentColor),
      ),
      onPressed: () {
        ExtendedNavigator.of(context).pushOrderPage();
      },
    ),
    duration: Duration(seconds: 3),
  )..show(context);
}
