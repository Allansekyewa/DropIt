import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class Category extends ValueObject<String>{
  Category(String? value):super(value,fieldName: "Category"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);
  

  }
    @override
  String get value => super.value!;
}