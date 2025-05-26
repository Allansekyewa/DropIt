import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class PhoneNumber extends ValueObject<String> {
  PhoneNumber (String? value) : super(value, fieldName: 'PhoneNumber') {
    validateNotNullNorEmpty(value, fieldName: fieldName);
   validatePhoneNumber(value,fieldName: fieldName);
    
  }

  @override
  String get value => super.value!;
}