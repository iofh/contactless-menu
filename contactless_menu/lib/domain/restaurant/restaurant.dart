import 'package:contactless_menu/domain/core/value_failures.dart';
import 'package:contactless_menu/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'restaurant.freezed.dart';

@freezed
abstract class Restaurant implements _$Restaurant {
  const Restaurant._();

  const factory Restaurant({
    @required UniqueId id,
  }) = _Restaurant;

  factory Restaurant.empty() => Restaurant(id: UniqueId(), menu: Menu);

  // Option<ValueFailure<dynamic>> get failureOption {
  //   return
  // }
}
