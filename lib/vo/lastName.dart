import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class LastName extends ValueObject<String>{
  LastName(String? value):super(value,fieldName: "LastName"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);

  }
    @override
  String get value => super.value!;
}