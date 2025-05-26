import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class Area extends ValueObject<String>{
  Area(String? value):super(value,fieldName: "Area"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}