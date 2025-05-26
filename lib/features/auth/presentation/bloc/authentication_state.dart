
import 'package:DropIT/core/enums/delivery_type.dart';
import 'package:DropIT/vo/email.dart';
import 'package:DropIT/vo/firstName.dart';
import 'package:DropIT/vo/lastName.dart';
import 'package:DropIT/vo/license.dart';
import 'package:DropIT/vo/nin.dart';
import 'package:DropIT/vo/numberPlate.dart';
import 'package:DropIT/vo/phoneNumber.dart';
import 'package:ayinza_commons/bloc/page_state.dart';
import 'package:ayinza_commons/utils/navigable_page.dart';
import 'package:ayinza_commons/utils/validatable_form.dart';
import 'package:flutter/material.dart';

class AuthenticationState extends PageState {
  final PhoneNumber? phoneNumber;
  final Email? email;
  final FirstName? firstName;
  final LastName? lastName;
  final License?license;
  final Numberplate? numberplate;
  final NinNumber? ninNumber;
  final bool? isTermsAgreed;
  final bool? isTapped;
  final String? formValidationError;
  final DeliveryType? selectDeliveryType;


  const AuthenticationState({
    this.formValidationError,
    super.triggerComponentKey,
    super.triggerComponentValue,
    this.email,
    this.isTermsAgreed = false,
    this.isTapped,
    this.ninNumber,
    this.selectDeliveryType,
    this.license,
     this.numberplate,
    this.firstName,
    this.lastName,
    this.phoneNumber,
  });

  AuthenticationState copyWith({
    PhoneNumber? phoneNumber,
    FirstName? firstName,
    LastName? lastName,
    String? triggerComponentKey,
    License?license,
    NinNumber?ninNumber,
    Numberplate?numberPlate,
    DeliveryType?selectDeliveryType,
    String? triggerComponentValue,
    bool? isAuthenticated,
    bool?isTermsAgreed,
    bool? isRememberChecked,
    bool? isTapped,
    Email? email,

    String? formValidationError,
  }) {
    return AuthenticationState(
      formValidationError: formValidationError ?? this.formValidationError,
      triggerComponentKey: triggerComponentKey ?? this.triggerComponentKey,
      triggerComponentValue:
          triggerComponentValue ?? this.triggerComponentValue,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      email: email ?? this.email,
      isTermsAgreed: isTermsAgreed?? this.isTermsAgreed,
      isTapped: isTapped ?? this.isTapped,
      license: license?? this.license,
      numberplate: numberplate?? this.numberplate,
      ninNumber: ninNumber??this.ninNumber,
      selectDeliveryType: selectDeliveryType??this.selectDeliveryType
    );
  }

  AuthenticationState.fromPreviousState(
      {required AuthenticationState previousState})
      : this(
            formValidationError: previousState.formValidationError,
            triggerComponentKey: previousState.triggerComponentKey,
            triggerComponentValue: previousState.triggerComponentValue,
            firstName: previousState.firstName,
            lastName: previousState.lastName,
            selectDeliveryType: previousState.selectDeliveryType,
            isTapped: previousState.isTapped,
            isTermsAgreed: previousState.isTermsAgreed,
            phoneNumber: previousState.phoneNumber,
            numberplate: previousState.numberplate,
            ninNumber: previousState.ninNumber,
            license: previousState.license,
            email: previousState.email);

  @override
  List<Object?> get props => [
        formValidationError,
        email,
        lastName,
        phoneNumber,
        isTermsAgreed,
        ninNumber, 
        license,
        selectDeliveryType,
        numberplate,
        firstName,
        isTapped,

      ];
}

class AuthenticationInitial extends AuthenticationState {
  const AuthenticationInitial() : super();
}

class CreateAccountValidationFieldPassed extends AuthenticationState
    with FieldValidationPassedState {
  CreateAccountValidationFieldPassed(
      {required AuthenticationState previousState,
      required String fieldComponentKey,
      dynamic fieldComponentValue})
      : super.fromPreviousState(
            previousState: previousState.copyWith(
                triggerComponentKey: fieldComponentKey,
                triggerComponentValue: fieldComponentValue));
  @override
  List<Object?> get props => [triggerComponentKey, triggerComponentValue];
}

class CreateAccountFieldValidationFailed extends AuthenticationState
    with FieldValidationFailedState {
  @override
  final String errorMessage;
  CreateAccountFieldValidationFailed(
      {required AuthenticationState previousState,
      required String fieldComponentKey,
      required dynamic fieldComponentValue,
      required this.errorMessage})
      : super.fromPreviousState(
            previousState: previousState.copyWith(
                triggerComponentKey: fieldComponentKey,
                triggerComponentValue: fieldComponentValue));
  @override
  List<Object?> get props =>
      [triggerComponentKey, triggerComponentValue, errorMessage];
}

@immutable
final class CreateAccountFormSubmissionStateInProgress
    extends AuthenticationState with ActivityInProgressState {
  @override
  final Key buttonKey;

  CreateAccountFormSubmissionStateInProgress({
    required this.buttonKey,
    required AuthenticationState previousState,
  }) : super.fromPreviousState(
          previousState:
              previousState.copyWith(triggerComponentKey: buttonKey.toString()),
        );
}

final class CreateAccountFormSubmissionFailed extends AuthenticationState
    with RequestFailedState {
  @override
  final String errorMessage;

  @override
  final Key buttonKey;

  CreateAccountFormSubmissionFailed({
    required this.buttonKey,
    required this.errorMessage,
    required AuthenticationState previousState,
  }) : super.fromPreviousState(
          previousState: previousState.copyWith(
              triggerComponentKey: buttonKey.toString(),
              triggerComponentValue: ''),
        );
}

@immutable
final class CreateAccountFormSubmissionSuccess extends AuthenticationState
    with RequestSuccessfulState {
  @override
  final String successMessage;

  @override
  final Key buttonKey;

  CreateAccountFormSubmissionSuccess({
    required this.buttonKey,
    this.successMessage = 'Account has been Created!',
    required AuthenticationState previousState,
  }) : super.fromPreviousState(
            previousState: previousState.copyWith(
                triggerComponentKey: buttonKey.toString()));
}

@immutable
final class InvalidCreateAccountFormState extends AuthenticationState
    with FormInvalidState {
  @override
  final String errorMessage;

  @override
  final Key buttonKey;

  InvalidCreateAccountFormState(
      {required this.buttonKey,
      required AuthenticationState previousState,
      this.errorMessage = 'Please fill all required fields'})
      : super.fromPreviousState(
          previousState: previousState.copyWith(
            triggerComponentKey: buttonKey.toString(),
          ),
        );
}

@immutable
final class ClearAccountFormState extends AuthenticationState
    with ClearFormState {
  @override
  final ValidatableForm form;

  @override
  final Key buttonKey;

  ClearAccountFormState({required this.buttonKey, required this.form})
      : super(
            triggerComponentKey: buttonKey.toString(),
            triggerComponentValue: '');
}



@immutable
final class NavigateToPageFormState extends AuthenticationState
    with NavigateNextFormState {
  @override
  final NavigablePage nextPage;

  @override
  final Key buttonKey;

  NavigateToPageFormState({required this.buttonKey, required this.nextPage})
      : super(
            triggerComponentKey: buttonKey.toString(),
            triggerComponentValue: '');
}

@immutable
final class NavigateAndReplacePageFormState extends AuthenticationState
    with NavigateReplaceFormState {
  @override
  final NavigablePage replacingPage;

  @override
  final Key buttonKey;

  NavigateAndReplacePageFormState(
      {required this.buttonKey, required this.replacingPage})
      : super(
            triggerComponentKey: buttonKey.toString(),
            triggerComponentValue: '');
}
