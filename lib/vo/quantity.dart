import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class Quantity extends ValueObject<String>{
 Quantity(String? value):super(value,fieldName: "QUantity"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}