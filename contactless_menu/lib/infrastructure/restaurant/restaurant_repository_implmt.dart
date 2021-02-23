import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contactless_menu/domain/restaurant/i_restaurant_repository.dart';
import 'package:contactless_menu/domain/restaurant/restaurant.dart';
import 'package:contactless_menu/domain/restaurant/restaurant_failure.dart';
import 'package:contactless_menu/infrastructure/restaurant/restaurant_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IRestaurantRepository)
class RestaurantRepository implements IRestaurantRepository {
  final FirebaseFirestore _firestore;

  RestaurantRepository(this._firestore);

  @override
  Stream<Either<RestaurantFailure, KtList<Restaurant>>>
      loadRestaurant() async* {
    final restaurantDoc = _firestore.collection('restaurant');
    yield* restaurantDoc
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<RestaurantFailure, KtList<Restaurant>>(
            snapshot.docs
                .map((doc) => RestaurantDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        //rxdart method
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const RestaurantFailure.insufficientPermission());
      } else {
        return left(const RestaurantFailure.unexpected());
      }
    });
  }
}
