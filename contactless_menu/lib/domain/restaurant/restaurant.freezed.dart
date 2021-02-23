// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RestaurantTearOff {
  const _$RestaurantTearOff();

// ignore: unused_element
  _Restaurant call(
      {@required UniqueId id,
      @required RestaurantName restaurantName,
      @required RestaurantDescription restaurantDescription,
      @required MenuList<MenuItem> menuList}) {
    return _Restaurant(
      id: id,
      restaurantName: restaurantName,
      restaurantDescription: restaurantDescription,
      menuList: menuList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Restaurant = _$RestaurantTearOff();

/// @nodoc
mixin _$Restaurant {
  UniqueId get id;
  RestaurantName get restaurantName;
  RestaurantDescription get restaurantDescription;
  MenuList<MenuItem> get menuList;

  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      RestaurantName restaurantName,
      RestaurantDescription restaurantDescription,
      MenuList<MenuItem> menuList});
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res> implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  final Restaurant _value;
  // ignore: unused_field
  final $Res Function(Restaurant) _then;

  @override
  $Res call({
    Object id = freezed,
    Object restaurantName = freezed,
    Object restaurantDescription = freezed,
    Object menuList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      restaurantName: restaurantName == freezed
          ? _value.restaurantName
          : restaurantName as RestaurantName,
      restaurantDescription: restaurantDescription == freezed
          ? _value.restaurantDescription
          : restaurantDescription as RestaurantDescription,
      menuList: menuList == freezed
          ? _value.menuList
          : menuList as MenuList<MenuItem>,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantCopyWith<$Res> implements $RestaurantCopyWith<$Res> {
  factory _$RestaurantCopyWith(
          _Restaurant value, $Res Function(_Restaurant) then) =
      __$RestaurantCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      RestaurantName restaurantName,
      RestaurantDescription restaurantDescription,
      MenuList<MenuItem> menuList});
}

/// @nodoc
class __$RestaurantCopyWithImpl<$Res> extends _$RestaurantCopyWithImpl<$Res>
    implements _$RestaurantCopyWith<$Res> {
  __$RestaurantCopyWithImpl(
      _Restaurant _value, $Res Function(_Restaurant) _then)
      : super(_value, (v) => _then(v as _Restaurant));

  @override
  _Restaurant get _value => super._value as _Restaurant;

  @override
  $Res call({
    Object id = freezed,
    Object restaurantName = freezed,
    Object restaurantDescription = freezed,
    Object menuList = freezed,
  }) {
    return _then(_Restaurant(
      id: id == freezed ? _value.id : id as UniqueId,
      restaurantName: restaurantName == freezed
          ? _value.restaurantName
          : restaurantName as RestaurantName,
      restaurantDescription: restaurantDescription == freezed
          ? _value.restaurantDescription
          : restaurantDescription as RestaurantDescription,
      menuList: menuList == freezed
          ? _value.menuList
          : menuList as MenuList<MenuItem>,
    ));
  }
}

/// @nodoc
class _$_Restaurant extends _Restaurant {
  const _$_Restaurant(
      {@required this.id,
      @required this.restaurantName,
      @required this.restaurantDescription,
      @required this.menuList})
      : assert(id != null),
        assert(restaurantName != null),
        assert(restaurantDescription != null),
        assert(menuList != null),
        super._();

  @override
  final UniqueId id;
  @override
  final RestaurantName restaurantName;
  @override
  final RestaurantDescription restaurantDescription;
  @override
  final MenuList<MenuItem> menuList;

  @override
  String toString() {
    return 'Restaurant(id: $id, restaurantName: $restaurantName, restaurantDescription: $restaurantDescription, menuList: $menuList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Restaurant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.restaurantName, restaurantName) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantName, restaurantName)) &&
            (identical(other.restaurantDescription, restaurantDescription) ||
                const DeepCollectionEquality().equals(
                    other.restaurantDescription, restaurantDescription)) &&
            (identical(other.menuList, menuList) ||
                const DeepCollectionEquality()
                    .equals(other.menuList, menuList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(restaurantName) ^
      const DeepCollectionEquality().hash(restaurantDescription) ^
      const DeepCollectionEquality().hash(menuList);

  @JsonKey(ignore: true)
  @override
  _$RestaurantCopyWith<_Restaurant> get copyWith =>
      __$RestaurantCopyWithImpl<_Restaurant>(this, _$identity);
}

abstract class _Restaurant extends Restaurant {
  const _Restaurant._() : super._();
  const factory _Restaurant(
      {@required UniqueId id,
      @required RestaurantName restaurantName,
      @required RestaurantDescription restaurantDescription,
      @required MenuList<MenuItem> menuList}) = _$_Restaurant;

  @override
  UniqueId get id;
  @override
  RestaurantName get restaurantName;
  @override
  RestaurantDescription get restaurantDescription;
  @override
  MenuList<MenuItem> get menuList;
  @override
  @JsonKey(ignore: true)
  _$RestaurantCopyWith<_Restaurant> get copyWith;
}
