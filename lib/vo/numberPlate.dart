import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class Numberplate extends ValueObject<String>{
  Numberplate(String? value):super(value,fieldName: "NumberPlate"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}