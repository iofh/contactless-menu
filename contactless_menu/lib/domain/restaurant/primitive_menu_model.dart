import 'package:contactless_menu/domain/restaurant/menu_item.dart';
import 'package:equatable/equatable.dart';

/*i have yet to fully grasp unions and value objects. I understand the top level on what
*it is for and how it works. i am still not very fluent is dealing with freezed and ktdart.
This is what this primitive model is for. changing value object to primitive for the bloc.
*/
class MenuItemModel extends Equatable {
  MenuItemModel(this.id, this.menuTitle, this.menuDescription, this.menuPrice);

  final String id;
  final String menuTitle;
  final String menuDescription;
  final double menuPrice;

  @override
  List<Object> get props => [id, menuTitle, menuDescription, menuPrice];

  static MenuItemModel fromValueObject(MenuItem menuItem) {
    return MenuItemModel(
        menuItem.id.getOrCrash(),
        menuItem.menuTitle.getOrCrash(),
        menuItem.menuDescription.getOrCrash(),
        double.parse(menuItem.menuPrice.getOrCrash()));
  }
}

class OrderListModel extends Equatable {
  const OrderListModel({this.menuModel = const <MenuItemModel>[]});

  final List<MenuItemModel> menuModel;

  double get totalPrice =>
      menuModel.fold(0.0, (total, current) => total + current.menuPrice);

  @override
  List<Object> get props => [menuModel];
}
