import 'package:contactless_menu/domain/core/value_failures.dart';
import 'package:contactless_menu/domain/core/value_objects.dart';
import 'package:contactless_menu/domain/restaurant/menu_item.dart';
import 'package:contactless_menu/domain/restaurant/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'restaurant.freezed.dart';

@freezed
abstract class Restaurant implements _$Restaurant {
  const Restaurant._();

  const factory Restaurant({
    @required UniqueId id,
    @required RestaurantName restaurantName,
    @required RestaurantDescription restaurantDescription,
    @required MenuList<MenuItem> menuList,
  }) = _Restaurant;

  factory Restaurant.empty() => Restaurant(
        id: UniqueId(),
        restaurantName: RestaurantName(''),
        restaurantDescription: RestaurantDescription(''),
        menuList: MenuList(emptyList()),
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return restaurantName.failureOrUnit
        .andThen(restaurantDescription.failureOrUnit)
        .andThen(
          menuList
              //get menulist entity
              .getOrCrash()
              //mapping through each menuitem and check if there's error in the menuItem
              .map((menuItem) => menuItem.failureOption)
              //filter out those menuItem that has errors
              .filter((o) => o.isSome())
              //if there is none
              .getOrElse(0, (_) => none())
              //return rightUnit/none or else return failure
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (_) => none());
  }
}
