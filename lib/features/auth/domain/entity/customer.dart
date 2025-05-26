import 'package:DropIT/vo/email.dart';
import 'package:DropIT/vo/firstName.dart';
import 'package:DropIT/vo/lastName.dart';
import 'package:ayinza_form_components/general/phone_field/phone_number.dart';
import 'package:shared/entities/contract.dart';

abstract class CustomerAccount implements Contract<CustomerAccount>{
    final FirstName? firstName;

   final LastName? lastName;
  final Email? email;
  final PhoneNumber?phoneNumber;
  const CustomerAccount({
    required this.email,
       required this.firstName,
       required this.lastName,
    
      required this.phoneNumber,
    
  });
   @override
  List<Object?> get props => [
         firstName,
         lastName,
        email,
        phoneNumber,
     
      ];
  @override
  bool? get stringify => true;

}