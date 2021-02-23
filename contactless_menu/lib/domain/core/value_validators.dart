import 'package:contactless_menu/domain/core/value_failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, double> validateIsDouble(
  String input,
) {
  final convertedDoubleInput = double.tryParse(input);
  if (convertedDoubleInput != null) {
    return right(convertedDoubleInput);
  } else {
    return left(
      ValueFailure.isNotDouble(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, double> validateIsNotNegative(
  String input,
) {
  final convertedDoubleInput = double.tryParse(input);
  if (convertedDoubleInput > 0) {
    return right(convertedDoubleInput);
  } else {
    return left(
      ValueFailure.isNegative(failedValue: input),
    );
  }
}
