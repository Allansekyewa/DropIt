import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class Email extends ValueObject<String> {
  Email(String? value) : super(value, fieldName: 'Email') {
    validateNotNullNorEmpty(value, fieldName: fieldName);
   validateEmail(value,fieldName: fieldName);
    
  }

  @override
  String get value => super.value!;
}
