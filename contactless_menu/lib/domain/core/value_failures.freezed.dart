// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  IsNotDouble<T> isNotDouble<T>({@required T failedValue}) {
    return IsNotDouble<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  IsNegative<T> isNegative<T>({@required T failedValue}) {
    return IsNegative<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult isNotDouble(T failedValue),
    @required TResult isNegative(T failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult isNotDouble(T failedValue),
    TResult isNegative(T failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult isNotDouble(IsNotDouble<T> value),
    @required TResult isNegative(IsNegative<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult isNotDouble(IsNotDouble<T> value),
    TResult isNegative(IsNegative<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult isNotDouble(T failedValue),
    @required TResult isNegative(T failedValue),
  }) {
    assert(empty != null);
    assert(exceedingLength != null);
    assert(isNotDouble != null);
    assert(isNegative != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult isNotDouble(T failedValue),
    TResult isNegative(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult isNotDouble(IsNotDouble<T> value),
    @required TResult isNegative(IsNegative<T> value),
  }) {
    assert(empty != null);
    assert(exceedingLength != null);
    assert(isNotDouble != null);
    assert(isNegative != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult isNotDouble(IsNotDouble<T> value),
    TResult isNegative(IsNegative<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult isNotDouble(T failedValue),
    @required TResult isNegative(T failedValue),
  }) {
    assert(empty != null);
    assert(exceedingLength != null);
    assert(isNotDouble != null);
    assert(isNegative != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult isNotDouble(T failedValue),
    TResult isNegative(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult isNotDouble(IsNotDouble<T> value),
    @required TResult isNegative(IsNegative<T> value),
  }) {
    assert(empty != null);
    assert(exceedingLength != null);
    assert(isNotDouble != null);
    assert(isNegative != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult isNotDouble(IsNotDouble<T> value),
    TResult isNegative(IsNegative<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $IsNotDoubleCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $IsNotDoubleCopyWith(
          IsNotDouble<T> value, $Res Function(IsNotDouble<T>) then) =
      _$IsNotDoubleCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$IsNotDoubleCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IsNotDoubleCopyWith<T, $Res> {
  _$IsNotDoubleCopyWithImpl(
      IsNotDouble<T> _value, $Res Function(IsNotDouble<T>) _then)
      : super(_value, (v) => _then(v as IsNotDouble<T>));

  @override
  IsNotDouble<T> get _value => super._value as IsNotDouble<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(IsNotDouble<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$IsNotDouble<T> implements IsNotDouble<T> {
  const _$IsNotDouble({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.isNotDouble(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsNotDouble<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $IsNotDoubleCopyWith<T, IsNotDouble<T>> get copyWith =>
      _$IsNotDoubleCopyWithImpl<T, IsNotDouble<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult isNotDouble(T failedValue),
    @required TResult isNegative(T failedValue),
  }) {
    assert(empty != null);
    assert(exceedingLength != null);
    assert(isNotDouble != null);
    assert(isNegative != null);
    return isNotDouble(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult isNotDouble(T failedValue),
    TResult isNegative(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isNotDouble != null) {
      return isNotDouble(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult isNotDouble(IsNotDouble<T> value),
    @required TResult isNegative(IsNegative<T> value),
  }) {
    assert(empty != null);
    assert(exceedingLength != null);
    assert(isNotDouble != null);
    assert(isNegative != null);
    return isNotDouble(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult isNotDouble(IsNotDouble<T> value),
    TResult isNegative(IsNegative<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isNotDouble != null) {
      return isNotDouble(this);
    }
    return orElse();
  }
}

abstract class IsNotDouble<T> implements ValueFailure<T> {
  const factory IsNotDouble({@required T failedValue}) = _$IsNotDouble<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $IsNotDoubleCopyWith<T, IsNotDouble<T>> get copyWith;
}

/// @nodoc
abstract class $IsNegativeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $IsNegativeCopyWith(
          IsNegative<T> value, $Res Function(IsNegative<T>) then) =
      _$IsNegativeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$IsNegativeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IsNegativeCopyWith<T, $Res> {
  _$IsNegativeCopyWithImpl(
      IsNegative<T> _value, $Res Function(IsNegative<T>) _then)
      : super(_value, (v) => _then(v as IsNegative<T>));

  @override
  IsNegative<T> get _value => super._value as IsNegative<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(IsNegative<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$IsNegative<T> implements IsNegative<T> {
  const _$IsNegative({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.isNegative(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsNegative<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $IsNegativeCopyWith<T, IsNegative<T>> get copyWith =>
      _$IsNegativeCopyWithImpl<T, IsNegative<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult isNotDouble(T failedValue),
    @required TResult isNegative(T failedValue),
  }) {
    assert(empty != null);
    assert(exceedingLength != null);
    assert(isNotDouble != null);
    assert(isNegative != null);
    return isNegative(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult exceedingLength(T failedValue, int max),
    TResult isNotDouble(T failedValue),
    TResult isNegative(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isNegative != null) {
      return isNegative(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult isNotDouble(IsNotDouble<T> value),
    @required TResult isNegative(IsNegative<T> value),
  }) {
    assert(empty != null);
    assert(exceedingLength != null);
    assert(isNotDouble != null);
    assert(isNegative != null);
    return isNegative(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult isNotDouble(IsNotDouble<T> value),
    TResult isNegative(IsNegative<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isNegative != null) {
      return isNegative(this);
    }
    return orElse();
  }
}

abstract class IsNegative<T> implements ValueFailure<T> {
  const factory IsNegative({@required T failedValue}) = _$IsNegative<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $IsNegativeCopyWith<T, IsNegative<T>> get copyWith;
}
