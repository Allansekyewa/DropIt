import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class Time extends ValueObject<String>{
 Time(String? value):super(value,fieldName: "Time"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}