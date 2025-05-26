import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class FirstName extends ValueObject<String>{
  FirstName(String? value):super(value,fieldName: "FirstName"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}