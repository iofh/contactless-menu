// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MenuItemTearOff {
  const _$MenuItemTearOff();

// ignore: unused_element
  _MenuItem call(
      {@required UniqueId id,
      @required MenuTitle menuTitle,
      @required MenuDescription menuDescription,
      @required MenuPrice menuPrice}) {
    return _MenuItem(
      id: id,
      menuTitle: menuTitle,
      menuDescription: menuDescription,
      menuPrice: menuPrice,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MenuItem = _$MenuItemTearOff();

/// @nodoc
mixin _$MenuItem {
  UniqueId get id;
  MenuTitle get menuTitle;
  MenuDescription get menuDescription;
  MenuPrice get menuPrice;

  @JsonKey(ignore: true)
  $MenuItemCopyWith<MenuItem> get copyWith;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      MenuTitle menuTitle,
      MenuDescription menuDescription,
      MenuPrice menuPrice});
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res> implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  final MenuItem _value;
  // ignore: unused_field
  final $Res Function(MenuItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object menuTitle = freezed,
    Object menuDescription = freezed,
    Object menuPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      menuTitle:
          menuTitle == freezed ? _value.menuTitle : menuTitle as MenuTitle,
      menuDescription: menuDescription == freezed
          ? _value.menuDescription
          : menuDescription as MenuDescription,
      menuPrice:
          menuPrice == freezed ? _value.menuPrice : menuPrice as MenuPrice,
    ));
  }
}

/// @nodoc
abstract class _$MenuItemCopyWith<$Res> implements $MenuItemCopyWith<$Res> {
  factory _$MenuItemCopyWith(_MenuItem value, $Res Function(_MenuItem) then) =
      __$MenuItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      MenuTitle menuTitle,
      MenuDescription menuDescription,
      MenuPrice menuPrice});
}

/// @nodoc
class __$MenuItemCopyWithImpl<$Res> extends _$MenuItemCopyWithImpl<$Res>
    implements _$MenuItemCopyWith<$Res> {
  __$MenuItemCopyWithImpl(_MenuItem _value, $Res Function(_MenuItem) _then)
      : super(_value, (v) => _then(v as _MenuItem));

  @override
  _MenuItem get _value => super._value as _MenuItem;

  @override
  $Res call({
    Object id = freezed,
    Object menuTitle = freezed,
    Object menuDescription = freezed,
    Object menuPrice = freezed,
  }) {
    return _then(_MenuItem(
      id: id == freezed ? _value.id : id as UniqueId,
      menuTitle:
          menuTitle == freezed ? _value.menuTitle : menuTitle as MenuTitle,
      menuDescription: menuDescription == freezed
          ? _value.menuDescription
          : menuDescription as MenuDescription,
      menuPrice:
          menuPrice == freezed ? _value.menuPrice : menuPrice as MenuPrice,
    ));
  }
}

/// @nodoc
class _$_MenuItem extends _MenuItem {
  const _$_MenuItem(
      {@required this.id,
      @required this.menuTitle,
      @required this.menuDescription,
      @required this.menuPrice})
      : assert(id != null),
        assert(menuTitle != null),
        assert(menuDescription != null),
        assert(menuPrice != null),
        super._();

  @override
  final UniqueId id;
  @override
  final MenuTitle menuTitle;
  @override
  final MenuDescription menuDescription;
  @override
  final MenuPrice menuPrice;

  @override
  String toString() {
    return 'MenuItem(id: $id, menuTitle: $menuTitle, menuDescription: $menuDescription, menuPrice: $menuPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuItem &&
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
  _$MenuItemCopyWith<_MenuItem> get copyWith =>
      __$MenuItemCopyWithImpl<_MenuItem>(this, _$identity);
}

abstract class _MenuItem extends MenuItem {
  const _MenuItem._() : super._();
  const factory _MenuItem(
      {@required UniqueId id,
      @required MenuTitle menuTitle,
      @required MenuDescription menuDescription,
      @required MenuPrice menuPrice}) = _$_MenuItem;

  @override
  UniqueId get id;
  @override
  MenuTitle get menuTitle;
  @override
  MenuDescription get menuDescription;
  @override
  MenuPrice get menuPrice;
  @override
  @JsonKey(ignore: true)
  _$MenuItemCopyWith<_MenuItem> get copyWith;
}
