import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:contactless_menu/application/restaurant/order/bloc/order_bloc.dart';
import 'package:contactless_menu/domain/restaurant/menu_item.dart';
import 'package:contactless_menu/domain/restaurant/primitive_menu_model.dart';
import 'package:contactless_menu/domain/restaurant/restaurant.dart';
import 'package:contactless_menu/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
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
            Text(restaurant.restaurantDescription.getOrCrash()),
            if (restaurant.menuList.length > 0) ...[
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2),
                  child: Wrap(
                    spacing: 8,
                    children: <Widget>[
                      ...restaurant.menuList
                          .getOrCrash()
                          .map((menu) => MenuTile(
                                menuItem: menu,
                              ))
                          .iter
                    ],
                  )),
            ],
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
          showSimpleFlushbar(context, menuModel.menuTitle);
        },
        child: Container(
            child: Column(
          children: [Icon(Icons.add), Text('Select')],
        )),
      ),
      title: Text(menuItem.menuTitle.getOrCrash()),
      subtitle: Text(menuItem.menuDescription.getOrCrash()),
      trailing: Text('\$ ${menuItem.menuPrice.getOrCrash()}'),
    );
  }
}

void showSimpleFlushbar(BuildContext context, String menu) {
  Flushbar(
    // There is also a messageText property for when you want to
    // use a Text widget and not just a simple String
    message: 'Added $menu',
    // Even the button can be styled to your heart's content
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
    // Show it with a cascading operator
  )..show(context);
}
