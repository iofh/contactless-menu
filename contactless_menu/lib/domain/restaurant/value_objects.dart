import 'package:contactless_menu/domain/core/value_failures.dart';
import 'package:contactless_menu/domain/core/value_objects.dart';
import 'package:contactless_menu/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

class MenuTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory MenuTitle(String input) {
    assert(input != null);
    return MenuTitle._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const MenuTitle._(this.value);
}

class MenuDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 5000;

  factory MenuDescription(String input) {
    assert(input != null);
    return MenuDescription._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const MenuDescription._(this.value);
}

class MenuPrice extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory MenuPrice(String input) {
    assert(input != null);
    return MenuPrice._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const MenuPrice._(this.value);
}

class RestaurantName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory RestaurantName(String input) {
    assert(input != null);
    return RestaurantName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const RestaurantName._(this.value);
}

class RestaurantDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory RestaurantDescription(String input) {
    assert(input != null);
    return RestaurantDescription._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const RestaurantDescription._(this.value);
}

class MenuList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory MenuList(KtList<T> input) {
    assert(input != null);
    return MenuList._(
      right(input),
    );
  }

  const MenuList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }
}
