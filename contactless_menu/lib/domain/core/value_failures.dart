import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.isNotDouble({
    @required T failedValue,
  }) = IsNotDouble<T>;
  const factory ValueFailure.isNegative({
    @required T failedValue,
  }) = IsNegative<T>;
}
