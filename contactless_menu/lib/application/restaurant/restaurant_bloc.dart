import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contactless_menu/domain/restaurant/i_restaurant_repository.dart';
import 'package:contactless_menu/domain/restaurant/restaurant.dart';
import 'package:contactless_menu/domain/restaurant/restaurant_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'restaurant_event.dart';
part 'restaurant_state.dart';
part 'restaurant_bloc.freezed.dart';

@injectable
class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  final IRestaurantRepository _restaurantRepository;

  RestaurantBloc(this._restaurantRepository) : super(RestaurantState.initial());

  // method for the firebase repository. I still have yet to figure out why i have write access to firebase
  // and when retrieving from the firebase firestore it always return null. even using the tutorial code from
  // firebase https://firebase.flutter.dev/docs/firestore/usage/ it still returns null.

  // @override
  // Stream<RestaurantState> mapEventToState(
  //   RestaurantEvent event,
  // ) async* {
  //   yield* event.map(
  //     displayAllStarted: (e) async* {
  //       //first, load the restaurant by calling the state
  //       yield const RestaurantState.loadInProgress();
  //       //go yield through each stream and map each restaurant to failures or restaurant
  //       yield* _restaurantRepository.loadRestaurant().map(
  //             (failureOrRestaurant) => failureOrRestaurant.fold(
  //               (failures) => RestaurantState.loadFailure(failures),
  //               (restaurant) => RestaurantState.loadSuccess(restaurant),
  //             ),
  //           );
  //     },
  //   );
  // }
  @override
  Stream<RestaurantState> mapEventToState(
    RestaurantEvent event,
  ) async* {
    yield* event.map(
      displayAllStarted: (e) async* {
        yield const RestaurantState.loadInProgress();
        yield* _restaurantRepository.loadRestaurantDemo().map(
              (failureOrRestaurant) => failureOrRestaurant.fold(
                (failures) => RestaurantState.loadFailure(failures),
                (restaurant) => RestaurantState.loadSuccess(restaurant),
              ),
            );
      },
    );
  }
}
