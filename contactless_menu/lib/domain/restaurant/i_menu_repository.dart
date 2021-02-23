import 'package:contactless_menu/domain/core/value_failures.dart';
import 'package:contactless_menu/domain/restaurant/menu_item.dart';
import 'package:contactless_menu/domain/restaurant/restaurant.dart';
import 'package:contactless_menu/domain/restaurant/restaurant_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IMenuRepository {
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> loadRestaurant();
}
