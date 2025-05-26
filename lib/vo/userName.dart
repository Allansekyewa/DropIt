import 'package:shared/entities/value_object.dart';
import 'package:shared/utils/common_validators.dart';

class UserName extends ValueObject<String>{
  UserName(String? value):super(value,fieldName: "UserName"){
    validateNotNullNorEmpty(value ,fieldName: fieldName);

  }
    @override
  String get value => super.value!;
}