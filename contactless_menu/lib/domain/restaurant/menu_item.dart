import 'package:contactless_menu/domain/core/value_failures.dart';
import 'package:contactless_menu/domain/core/value_objects.dart';
import 'package:contactless_menu/domain/restaurant/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'menu_item.freezed.dart';

@freezed
abstract class MenuItem implements _$MenuItem {
  const MenuItem._();

  const factory MenuItem({
    @required UniqueId id,
    @required MenuTitle menuTitle,
    @required MenuDescription menuDescription,
    @required MenuPrice menuPrice,
  }) = _MenuItem;

  factory MenuItem.empty() => MenuItem(
        id: UniqueId(),
        menuTitle: MenuTitle(''),
        menuDescription: MenuDescription(''),
        menuPrice: MenuPrice(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return menuTitle.failureOrUnit
        .andThen(menuDescription.failureOrUnit)
        .andThen(menuPrice.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
