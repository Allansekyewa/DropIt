import 'package:DropIT/core/enums/delivery_type.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_state.dart';
import 'package:DropIT/vo/email.dart';
import 'package:DropIT/vo/firstName.dart';
import 'package:DropIT/vo/lastName.dart';
import 'package:DropIT/vo/license.dart';
import 'package:DropIT/vo/nin.dart';
import 'package:DropIT/vo/numberPlate.dart';
import 'package:DropIT/vo/phoneNumber.dart';
import 'package:ayinza_commons/bloc/page_event.dart';
import 'package:flutter/material.dart';



class AuthenticationEvent extends PageEvent {}

sealed class CreateAccountFieldChangedEvent extends AuthenticationEvent
    with FieldChangedEvent<AuthenticationState> {
  @override
  final String fieldKey;
  @override
  final dynamic fieldValue;
  CreateAccountFieldChangedEvent(
      {required this.fieldKey, required this.fieldValue});
}

class FirstNameChangedEvent extends CreateAccountFieldChangedEvent {
  final String firstName;
  FirstNameChangedEvent({required this.firstName, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: firstName);

  @override
  AuthenticationState updateState(AuthenticationState currentState) {
    return currentState.copyWith(firstName: FirstName(firstName));
  }
}


class LastNameChangedEvent extends CreateAccountFieldChangedEvent {
  final String lastName;
  LastNameChangedEvent({required this.lastName, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: lastName);

  @override
  AuthenticationState updateState(AuthenticationState currentState) {
    return currentState.copyWith(lastName: LastName(lastName));
  }
}



class PhoneNumberChangedevent extends CreateAccountFieldChangedEvent {
  final String phoneNumber;
  PhoneNumberChangedevent(
      {required this.phoneNumber, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: phoneNumber);

  @override
  AuthenticationState updateState(AuthenticationState currentState) {
    return currentState.copyWith(phoneNumber: PhoneNumber(phoneNumber));
  }
}

class EmailChangedEvent extends CreateAccountFieldChangedEvent {
  final String email;
  EmailChangedEvent({required this.email, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: email);

  @override
  AuthenticationState updateState(AuthenticationState currentState) {
    return currentState.copyWith(email: Email(email));
  }
}
class NumberPlateChangedEvent extends CreateAccountFieldChangedEvent {
  final String numberPlate;
  NumberPlateChangedEvent({required this.numberPlate, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: numberPlate);

  @override
  AuthenticationState updateState(AuthenticationState currentState) {
    return currentState.copyWith(numberPlate: Numberplate(numberPlate));
  }
}
class LicenseChangedEvent extends CreateAccountFieldChangedEvent {
  final String license;
  LicenseChangedEvent({required this.license, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: license);

  @override
  AuthenticationState updateState(AuthenticationState currentState) {
    return currentState.copyWith(license: License(license));
  }
}
class NinChangedEvent extends CreateAccountFieldChangedEvent {
  final String nin;
  NinChangedEvent({required this.nin, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: nin);

  @override
  AuthenticationState updateState(AuthenticationState currentState) {
    return currentState.copyWith(ninNumber: NinNumber(nin));
  }
}






class SubmitFormEvent extends AuthenticationEvent {
  final Key key;
  final bool inSubmitMode;

  SubmitFormEvent({required this.key, required this.inSubmitMode});
}

class ToggleRememberMeEvent extends AuthenticationEvent {}



class TappedEvent extends AuthenticationEvent {
  TappedEvent();
}

class CheckedTermsAgreementEvent extends AuthenticationEvent {
  final bool isAgreed;
  final Key? key;

  CheckedTermsAgreementEvent({
    required this.isAgreed,
    this.key,
  });

  @override
  List<Object?> get props => [isAgreed, key];
}
 class SelectDeliveryTypeEvent extends AuthenticationEvent{
  final DeliveryType deliveryType;
  SelectDeliveryTypeEvent({required this.deliveryType});
 }
class SubmitEvent extends AuthenticationEvent {
  final Key key;
 SubmitEvent({
    required this.key,
  });
}