// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantDto _$_$_RestaurantDtoFromJson(Map<String, dynamic> json) {
  return _$_RestaurantDto(
    restaurantName: json['restaurantName'] as String,
    restaurantDescription: json['restaurantDescription'] as String,
    menuList: (json['menuList'] as List)
        ?.map((e) =>
            e == null ? null : MenuItemDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_RestaurantDtoToJson(_$_RestaurantDto instance) =>
    <String, dynamic>{
      'restaurantName': instance.restaurantName,
      'restaurantDescription': instance.restaurantDescription,
      'menuList': instance.menuList,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

_$_MenuItemDto _$_$_MenuItemDtoFromJson(Map<String, dynamic> json) {
  return _$_MenuItemDto(
    id: json['id'] as String,
    menuTitle: json['menuTitle'] as String,
    menuDescription: json['menuDescription'] as String,
    menuPrice: (json['menuPrice'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_MenuItemDtoToJson(_$_MenuItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'menuTitle': instance.menuTitle,
      'menuDescription': instance.menuDescription,
      'menuPrice': instance.menuPrice,
    };
