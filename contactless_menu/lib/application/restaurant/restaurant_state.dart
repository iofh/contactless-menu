part of 'restaurant_bloc.dart';

@freezed
abstract class RestaurantState with _$RestaurantState {
  const factory RestaurantState.initial() = _Initial;
  const factory RestaurantState.loadInProgress() = _LoadInProgress;
  const factory RestaurantState.loadSuccess(KtList<Restaurant> restaurant) =
      _LoadSuccess;
  const factory RestaurantState.loadFailure(
      RestaurantFailure restaurantFailure) = _LoadFailure;
}
