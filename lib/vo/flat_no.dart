import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class FlatNumber extends ValueObject<String>{
  FlatNumber(String? value):super(value,fieldName: "FlatNumber"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}