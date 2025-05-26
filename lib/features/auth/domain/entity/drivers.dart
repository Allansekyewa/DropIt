import 'package:DropIT/vo/email.dart';
import 'package:DropIT/vo/firstName.dart';
import 'package:DropIT/vo/lastName.dart';
import 'package:DropIT/vo/license.dart';
import 'package:DropIT/vo/numberPlate.dart';
import 'package:ayinza_form_components/general/phone_field/phone_number.dart';
import 'package:shared/entities/contract.dart';

abstract class DriverAccount implements Contract<DriverAccount>{
    final FirstName? firstName;
  final License? license;
  final Numberplate? numberplate;
   final LastName? lastName;
  final Email? email;
  final PhoneNumber?phoneNumber;
  const DriverAccount({
    required this.email,
       required this.firstName,
       required this.lastName,
       required this.license,

       required this.numberplate,
    
      required this.phoneNumber,
    
  });
   @override
  List<Object?> get props => [
         firstName,
         lastName,
        email,
        phoneNumber,
        license,
        numberplate
     
      ];
  @override
  bool? get stringify => true;

}