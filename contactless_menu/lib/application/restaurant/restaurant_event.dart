part of 'restaurant_bloc.dart';

@freezed
abstract class RestaurantEvent with _$RestaurantEvent {
  const factory RestaurantEvent.displayAllStarted() = _DisplayAllStarted;
}
