// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurant_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RestaurantDto _$RestaurantDtoFromJson(Map<String, dynamic> json) {
  return _RestaurantDto.fromJson(json);
}

/// @nodoc
class _$RestaurantDtoTearOff {
  const _$RestaurantDtoTearOff();

// ignore: unused_element
  _RestaurantDto call(
      {@JsonKey(ignore: true) String id,
      @required String restaurantName,
      @required String restaurantDescription,
      @required List<MenuItemDto> menuList,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _RestaurantDto(
      id: id,
      restaurantName: restaurantName,
      restaurantDescription: restaurantDescription,
      menuList: menuList,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  RestaurantDto fromJson(Map<String, Object> json) {
    return RestaurantDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RestaurantDto = _$RestaurantDtoTearOff();

/// @nodoc
mixin _$RestaurantDto {
  @JsonKey(ignore: true)
  String get id;
  String get restaurantName;
  String get restaurantDescription;
  List<MenuItemDto> get menuList;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RestaurantDtoCopyWith<RestaurantDto> get copyWith;
}

/// @nodoc
abstract class $RestaurantDtoCopyWith<$Res> {
  factory $RestaurantDtoCopyWith(
          RestaurantDto value, $Res Function(RestaurantDto) then) =
      _$RestaurantDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String restaurantName,
      String restaurantDescription,
      List<MenuItemDto> menuList,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$RestaurantDtoCopyWithImpl<$Res>
    implements $RestaurantDtoCopyWith<$Res> {
  _$RestaurantDtoCopyWithImpl(this._value, this._then);

  final RestaurantDto _value;
  // ignore: unused_field
  final $Res Function(RestaurantDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object restaurantName = freezed,
    Object restaurantDescription = freezed,
    Object menuList = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      restaurantName: restaurantName == freezed
          ? _value.restaurantName
          : restaurantName as String,
      restaurantDescription: restaurantDescription == freezed
          ? _value.restaurantDescription
          : restaurantDescription as String,
      menuList:
          menuList == freezed ? _value.menuList : menuList as List<MenuItemDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantDtoCopyWith<$Res>
    implements $RestaurantDtoCopyWith<$Res> {
  factory _$RestaurantDtoCopyWith(
          _RestaurantDto value, $Res Function(_RestaurantDto) then) =
      __$RestaurantDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String restaurantName,
      String restaurantDescription,
      List<MenuItemDto> menuList,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$RestaurantDtoCopyWithImpl<$Res>
    extends _$RestaurantDtoCopyWithImpl<$Res>
    implements _$RestaurantDtoCopyWith<$Res> {
  __$RestaurantDtoCopyWithImpl(
      _RestaurantDto _value, $Res Function(_RestaurantDto) _then)
      : super(_value, (v) => _then(v as _RestaurantDto));

  @override
  _RestaurantDto get _value => super._value as _RestaurantDto;

  @override
  $Res call({
    Object id = freezed,
    Object restaurantName = freezed,
    Object restaurantDescription = freezed,
    Object menuList = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_RestaurantDto(
      id: id == freezed ? _value.id : id as String,
      restaurantName: restaurantName == freezed
          ? _value.restaurantName
          : restaurantName as String,
      restaurantDescription: restaurantDescription == freezed
          ? _value.restaurantDescription
          : restaurantDescription as String,
      menuList:
          menuList == freezed ? _value.menuList : menuList as List<MenuItemDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RestaurantDto extends _RestaurantDto {
  const _$_RestaurantDto(
      {@JsonKey(ignore: true) this.id,
      @required this.restaurantName,
      @required this.restaurantDescription,
      @required this.menuList,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(restaurantName != null),
        assert(restaurantDescription != null),
        assert(menuList != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_RestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RestaurantDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String restaurantName;
  @override
  final String restaurantDescription;
  @override
  final List<MenuItemDto> menuList;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'RestaurantDto(id: $id, restaurantName: $restaurantName, restaurantDescription: $restaurantDescription, menuList: $menuList, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestaurantDto &&
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
                    .equals(other.menuList, menuList)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(restaurantName) ^
      const DeepCollectionEquality().hash(restaurantDescription) ^
      const DeepCollectionEquality().hash(menuList) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$RestaurantDtoCopyWith<_RestaurantDto> get copyWith =>
      __$RestaurantDtoCopyWithImpl<_RestaurantDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RestaurantDtoToJson(this);
  }
}

abstract class _RestaurantDto extends RestaurantDto {
  const _RestaurantDto._() : super._();
  const factory _RestaurantDto(
          {@JsonKey(ignore: true) String id,
          @required String restaurantName,
          @required String restaurantDescription,
          @required List<MenuItemDto> menuList,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_RestaurantDto;

  factory _RestaurantDto.fromJson(Map<String, dynamic> json) =
      _$_RestaurantDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get restaurantName;
  @override
  String get restaurantDescription;
  @override
  List<MenuItemDto> get menuList;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$RestaurantDtoCopyWith<_RestaurantDto> get copyWith;
}

MenuItemDto _$MenuItemDtoFromJson(Map<String, dynamic> json) {
  return _MenuItemDto.fromJson(json);
}

/// @nodoc
class _$MenuItemDtoTearOff {
  const _$MenuItemDtoTearOff();

// ignore: unused_element
  _MenuItemDto call(
      {@required String id,
      @required String menuTitle,
      @required String menuDescription,
      @required double menuPrice}) {
    return _MenuItemDto(
      id: id,
      menuTitle: menuTitle,
      menuDescription: menuDescription,
      menuPrice: menuPrice,
    );
  }

// ignore: unused_element
  MenuItemDto fromJson(Map<String, Object> json) {
    return MenuItemDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MenuItemDto = _$MenuItemDtoTearOff();

/// @nodoc
mixin _$MenuItemDto {
  String get id;
  String get menuTitle;
  String get menuDescription;
  double get menuPrice;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MenuItemDtoCopyWith<MenuItemDto> get copyWith;
}

/// @nodoc
abstract class $MenuItemDtoCopyWith<$Res> {
  factory $MenuItemDtoCopyWith(
          MenuItemDto value, $Res Function(MenuItemDto) then) =
      _$MenuItemDtoCopyWithImpl<$Res>;
  $Res call(
      {String id, String menuTitle, String menuDescription, double menuPrice});
}

/// @nodoc
class _$MenuItemDtoCopyWithImpl<$Res> implements $MenuItemDtoCopyWith<$Res> {
  _$MenuItemDtoCopyWithImpl(this._value, this._then);

  final MenuItemDto _value;
  // ignore: unused_field
  final $Res Function(MenuItemDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object menuTitle = freezed,
    Object menuDescription = freezed,
    Object menuPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      menuTitle: menuTitle == freezed ? _value.menuTitle : menuTitle as String,
      menuDescription: menuDescription == freezed
          ? _value.menuDescription
          : menuDescription as String,
      menuPrice: menuPrice == freezed ? _value.menuPrice : menuPrice as double,
    ));
  }
}

/// @nodoc
abstract class _$MenuItemDtoCopyWith<$Res>
    implements $MenuItemDtoCopyWith<$Res> {
  factory _$MenuItemDtoCopyWith(
          _MenuItemDto value, $Res Function(_MenuItemDto) then) =
      __$MenuItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String menuTitle, String menuDescription, double menuPrice});
}

/// @nodoc
class __$MenuItemDtoCopyWithImpl<$Res> extends _$MenuItemDtoCopyWithImpl<$Res>
    implements _$MenuItemDtoCopyWith<$Res> {
  __$MenuItemDtoCopyWithImpl(
      _MenuItemDto _value, $Res Function(_MenuItemDto) _then)
      : super(_value, (v) => _then(v as _MenuItemDto));

  @override
  _MenuItemDto get _value => super._value as _MenuItemDto;

  @override
  $Res call({
    Object id = freezed,
    Object menuTitle = freezed,
    Object menuDescription = freezed,
    Object menuPrice = freezed,
  }) {
    return _then(_MenuItemDto(
      id: id == freezed ? _value.id : id as String,
      menuTitle: menuTitle == freezed ? _value.menuTitle : menuTitle as String,
      menuDescription: menuDescription == freezed
          ? _value.menuDescription
          : menuDescription as String,
      menuPrice: menuPrice == freezed ? _value.menuPrice : menuPrice as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MenuItemDto extends _MenuItemDto {
  const _$_MenuItemDto(
      {@required this.id,
      @required this.menuTitle,
      @required this.menuDescription,
      @required this.menuPrice})
      : assert(id != null),
        assert(menuTitle != null),
        assert(menuDescription != null),
        assert(menuPrice != null),
        super._();

  factory _$_MenuItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MenuItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String menuTitle;
  @override
  final String menuDescription;
  @override
  final double menuPrice;

  @override
  String toString() {
    return 'MenuItemDto(id: $id, menuTitle: $menuTitle, menuDescription: $menuDescription, menuPrice: $menuPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuItemDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.menuTitle, menuTitle) ||
                const DeepCollectionEquality()
                    .equals(other.menuTitle, menuTitle)) &&
            (identical(other.menuDescription, menuDescription) ||
                const DeepCollectionEquality()
                    .equals(other.menuDescription, menuDescription)) &&
            (identical(other.menuPrice, menuPrice) ||
                const DeepCollectionEquality()
                    .equals(other.menuPrice, menuPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(menuTitle) ^
      const DeepCollectionEquality().hash(menuDescription) ^
      const DeepCollectionEquality().hash(menuPrice);

  @JsonKey(ignore: true)
  @override
  _$MenuItemDtoCopyWith<_MenuItemDto> get copyWith =>
      __$MenuItemDtoCopyWithImpl<_MenuItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MenuItemDtoToJson(this);
  }
}

abstract class _MenuItemDto extends MenuItemDto {
  const _MenuItemDto._() : super._();
  const factory _MenuItemDto(
      {@required String id,
      @required String menuTitle,
      @required String menuDescription,
      @required double menuPrice}) = _$_MenuItemDto;

  factory _MenuItemDto.fromJson(Map<String, dynamic> json) =
      _$_MenuItemDto.fromJson;

  @override
  String get id;
  @override
  String get menuTitle;
  @override
  String get menuDescription;
  @override
  double get menuPrice;
  @override
  @JsonKey(ignore: true)
  _$MenuItemDtoCopyWith<_MenuItemDto> get copyWith;
}
