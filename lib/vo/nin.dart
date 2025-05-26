import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class NinNumber extends ValueObject<String> {
  NinNumber(String? value) : super(value, fieldName: "NinNumber") {
    validateNotNullNorEmpty(value, fieldName: fieldName);
    validateNinFormat(value!);
  }

  @override
  String get value => super.value!;

  void validateNinFormat(String value) {
    if (!RegExp(r'^(CF|CM)', caseSensitive: false).hasMatch(value)) {
      throw ArgumentError("NIN must begin with 'CF' or 'CM'.");
    }

    if (value.length != 14) {
      throw ArgumentError("NIN must be 14 characters long.");
    }

    if (!RegExp(r'^\d{12}$').hasMatch(value.substring(2))) {
      throw ArgumentError("NIN must contain 12 digits after 'CF' or 'CM'.");
    }
  }

  @override
  String toString() => "NinNumber($value)";
}
