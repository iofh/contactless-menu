import 'package:contactless_menu/domain/restaurant/restaurant.dart';
import 'package:contactless_menu/domain/restaurant/restaurant_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IRestaurantRepository {
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> loadRestaurant();
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> loadRestaurantDemo();
  // Future<Either<RestaurantFailure, Unit>> create(Restaurant restaurant);
}
