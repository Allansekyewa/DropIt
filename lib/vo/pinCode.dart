import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class PinCode extends ValueObject<String>{
  PinCode(String? value):super(value,fieldName: "PinCode"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}