import 'package:auto_route/auto_route.dart';
import 'package:contactless_menu/application/restaurant/order/bloc/order_bloc.dart';
import 'package:contactless_menu/domain/restaurant/menu_item.dart';
import 'package:contactless_menu/domain/restaurant/primitive_menu_model.dart';
import 'package:contactless_menu/domain/restaurant/restaurant.dart';
import 'package:contactless_menu/presentation/routes/router.gr.dart';
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
          InkWell(
            child: Icon(Icons.shop),
            onTap: () {
              ExtendedNavigator.of(context).pushOrderPage();
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Text(restaurant.restaurantDescription.getOrCrash()),
            if (restaurant.menuList.length > 0) ...[
              const SizedBox(height: 4),
              Wrap(
                spacing: 8,
                children: <Widget>[
                  ...restaurant.menuList
                      .getOrCrash()
                      .map((menu) => MenuTile(
                            menuItem: menu,
                          ))
                      .iter
                ],
              )
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

    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: InkWell(
            onTap: () {
              context.read<OrderBloc>().add(AddOrderEvent(menuModel));
            },
            child: Container(
                child: Column(
              children: [Icon(Icons.add), Text('Select')],
            )),
          ),
          title: Text(menuItem.menuTitle.getOrCrash()),
          subtitle: Text(menuItem.menuDescription.getOrCrash()),
          trailing: Text('\$ ${menuItem.menuPrice.getOrCrash()}'),
        ),
      ],
    );
  }
}
