import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class Weight extends ValueObject<String>{
  Weight(String? value):super(value,fieldName: "Weight"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}