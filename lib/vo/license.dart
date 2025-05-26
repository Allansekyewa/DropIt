import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class License extends ValueObject<String>{
  License(String? value):super(value,fieldName: "License"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}