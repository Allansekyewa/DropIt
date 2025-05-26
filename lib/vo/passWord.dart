import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class Password extends ValueObject<String> {
  Password(String value) : super(value, fieldName: 'Password') {
    validateNotNullNorEmpty(value, fieldName: fieldName);
    validateLength(value, min: 8, max: 20, fieldName: fieldName);
    validatePasswordFormat(value, fieldName: fieldName);
  }

  @override
  String get value => super.value!;
}

void validatePasswordFormat(String value, {String fieldName = 'password'}) {
  final regex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
  if (!regex.hasMatch(value)) {
    throw ArgumentError.value(value, fieldName,
        ' Must contain letters and special characters.');
  }
}
