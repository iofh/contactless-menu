import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contactless_menu/domain/restaurant/i_restaurant_repository.dart';
import 'package:contactless_menu/domain/restaurant/restaurant.dart';
import 'package:contactless_menu/domain/restaurant/restaurant_failure.dart';
import 'package:contactless_menu/infrastructure/restaurant/restaurant_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:contactless_menu/infrastructure/core/firebase_helper_method.dart';
import 'package:flutter/services.dart' show rootBundle;

@LazySingleton(as: IRestaurantRepository)
class RestaurantRepository implements IRestaurantRepository {
  final FirebaseFirestore _firestore;

  RestaurantRepository(this._firestore);

  @override
  Stream<Either<RestaurantFailure, KtList<Restaurant>>>
      loadRestaurant() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.restaurantCollection
        //do not need timestamp at the moment
        //.orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((snapshot) => right<RestaurantFailure, KtList<Restaurant>>(snapshot
            .docs
            .map((doc) => RestaurantDto.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const RestaurantFailure.insufficientPermission());
      } else {
        print(e);
        return left(const RestaurantFailure.unexpected());
      }
    });
  }

// repository method for getting data from json instead of firebase firestore
  @override
  Stream<Either<RestaurantFailure, KtList<Restaurant>>>
      loadRestaurantDemo() async* {
    try {
      final restaurantJson =
          await rootBundle.loadString('assets/demo_data.json');
      final data = json.decode(restaurantJson) as List;
      final List<Restaurant> restaurantDto =
          data.map((res) => RestaurantDto.fromJson(res).toDomain()).toList();
      yield right(restaurantDto.toImmutableList());
    } catch (e) {
      yield left(const RestaurantFailure.unexpected());
    }
  }
}
