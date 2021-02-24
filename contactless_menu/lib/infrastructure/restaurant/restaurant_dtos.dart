import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contactless_menu/domain/core/value_objects.dart';
import 'package:contactless_menu/domain/restaurant/menu_item.dart';
import 'package:contactless_menu/domain/restaurant/restaurant.dart';
import 'package:contactless_menu/domain/restaurant/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'restaurant_dtos.freezed.dart';
part 'restaurant_dtos.g.dart';

@freezed
abstract class RestaurantDto implements _$RestaurantDto {
  const RestaurantDto._();

  const factory RestaurantDto({
    @JsonKey(ignore: true) String id,
    @required String restaurantName,
    @required String restaurantDescription,
    @required List<MenuItemDto> menuList,
  }) = _RestaurantDto;

  factory RestaurantDto.fromDomain(Restaurant restaurant) {
    return RestaurantDto(
      id: restaurant.id.getOrCrash(),
      restaurantName: restaurant.restaurantName.getOrCrash(),
      restaurantDescription: restaurant.restaurantDescription.getOrCrash(),
      menuList: restaurant.menuList
          .getOrCrash()
          .map(
            (menuItem) => MenuItemDto.fromDomain(menuItem),
          )
          .asList(),
    );
  }

  Restaurant toDomain() {
    return Restaurant(
      id: UniqueId.fromUniqueString('testing'),
      restaurantName: RestaurantName(restaurantName),
      restaurantDescription: RestaurantDescription(restaurantDescription),
      menuList:
          MenuList(menuList.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory RestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDtoFromJson(json);

  factory RestaurantDto.fromFirestore(DocumentSnapshot doc) {
    return RestaurantDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class MenuItemDto implements _$MenuItemDto {
  const MenuItemDto._();

  const factory MenuItemDto({
    @required String id,
    @required String menuTitle,
    @required String menuDescription,
    @required double menuPrice,
  }) = _MenuItemDto;

  factory MenuItemDto.fromDomain(MenuItem menuItem) {
    return MenuItemDto(
      id: menuItem.id.getOrCrash(),
      menuTitle: menuItem.menuTitle.getOrCrash(),
      menuDescription: menuItem.menuDescription.getOrCrash(),
      menuPrice: double.parse(menuItem.menuPrice.getOrCrash()),
    );
  }

  MenuItem toDomain() {
    return MenuItem(
      id: UniqueId.fromUniqueString(id),
      menuTitle: MenuTitle(menuTitle),
      menuDescription: MenuDescription(menuDescription),
      menuPrice: MenuPrice(menuPrice.toString()),
    );
  }

  factory MenuItemDto.fromJson(Map<String, dynamic> json) =>
      _$MenuItemDtoFromJson(json);
}
