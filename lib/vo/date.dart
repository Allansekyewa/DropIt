import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class Date extends ValueObject<String>{
 Date(String? value):super(value,fieldName: "Date"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}