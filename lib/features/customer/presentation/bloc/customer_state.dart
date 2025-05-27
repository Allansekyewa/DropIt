import 'package:DropIT/vo/area.dart';
import 'package:DropIT/vo/date.dart';
import 'package:DropIT/vo/firstName.dart';
import 'package:DropIT/vo/flat_no.dart';
import 'package:DropIT/vo/phoneNumber.dart';
import 'package:DropIT/vo/pinCode.dart';
import 'package:DropIT/vo/quantity.dart';
import 'package:DropIT/vo/time.dart';
import 'package:DropIT/vo/weight.dart';
import 'package:ayinza_commons/bloc/page_state.dart';
import 'package:ayinza_commons/utils/navigable_page.dart';
import 'package:ayinza_commons/utils/validatable_form.dart';
import 'package:flutter/foundation.dart';



class CustomerState extends PageState {
  final PhoneNumber? phoneNumber;
  final FirstName? firstName;
    final List<String>? selectedItems;
  final Area? areaName;
  final Category? category;
  final FlatNumber? flatNumber;
  final PinCode? pinCode;
  final Quantity? quantity;
  final Time? time;
  final Weight? weight;
  final Date? date;
 
  const CustomerState({
    this.phoneNumber,
    this.firstName,
    this.areaName,
    this.category,
    this.selectedItems,
    this.flatNumber,
    this.pinCode,
    this.quantity,
    this.time,
    this.weight,
    this.date,
    super.triggerComponentKey,
    super.triggerComponentValue,
  });

  CustomerState copyWith({
    PhoneNumber? phoneNumber,
    FirstName? firstName,
    Area? areaName,
   List<String>? selectedItems,
    Category? category,
    FlatNumber? flatNumber,
    PinCode? pinCode,
    Quantity? quantity,
    Time? time,
    Weight? weight,
    Date? date,
    String? triggerComponentKey,
    String? triggerComponentValue,
  }) {
    return CustomerState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      firstName: firstName ?? this.firstName,
      areaName: areaName ?? this.areaName,
      category: category ?? this.category,
      flatNumber: flatNumber ?? this.flatNumber,
      pinCode: pinCode ?? this.pinCode,
      quantity: quantity ?? this.quantity,
      time: time ?? this.time,
      selectedItems: selectedItems?? this.selectedItems,
      weight: weight ?? this.weight,
      date: date ?? this.date,
      triggerComponentKey: triggerComponentKey ?? this.triggerComponentKey,
      triggerComponentValue: triggerComponentValue ?? this.triggerComponentValue,
    );
  }

  CustomerState.fromPreviousState({required CustomerState previousState})
      : this(
          phoneNumber: previousState.phoneNumber,
          firstName: previousState.firstName,
          areaName: previousState.areaName,
          category: previousState.category,
          flatNumber: previousState.flatNumber,
          pinCode: previousState.pinCode,
          quantity: previousState.quantity,
          time: previousState.time,
          weight: previousState.weight,
          selectedItems: previousState.selectedItems,
          date: previousState.date,
          triggerComponentKey: previousState.triggerComponentKey,
          triggerComponentValue: previousState.triggerComponentValue,
        );

  @override
  List<Object?> get props => [
        phoneNumber,
        firstName,
        areaName,
        category,
        flatNumber,
        selectedItems,
        pinCode,
        quantity,
        time,
        weight,
        date,
        triggerComponentKey,
        triggerComponentValue,
      ];
}

class CustomerInitial extends CustomerState {
  const CustomerInitial() : super();
}

class CreateAccountValidationFieldPassed extends CustomerState
    with FieldValidationPassedState {
  CreateAccountValidationFieldPassed({
    required CustomerState previousState,
    required String fieldComponentKey,
    dynamic fieldComponentValue,
  }) : super.fromPreviousState(
          previousState: previousState.copyWith(
            triggerComponentKey: fieldComponentKey,
            triggerComponentValue: fieldComponentValue,
          ),
        );

  @override
  List<Object?> get props => [triggerComponentKey, triggerComponentValue];
}

class CreateAccountFieldValidationFailed extends CustomerState
    with FieldValidationFailedState {
  @override
  final String errorMessage;

  CreateAccountFieldValidationFailed({
    required CustomerState previousState,
    required String fieldComponentKey,
    required dynamic fieldComponentValue,
    required this.errorMessage,
  }) : super.fromPreviousState(
          previousState: previousState.copyWith(
            triggerComponentKey: fieldComponentKey,
            triggerComponentValue: fieldComponentValue,
          ),
        );

  @override
  List<Object?> get props =>
      [triggerComponentKey, triggerComponentValue, errorMessage];
}

@immutable
final class CreateAccountFormSubmissionStateInProgress extends CustomerState
    with ActivityInProgressState {
  @override
  final Key buttonKey;

  CreateAccountFormSubmissionStateInProgress({
    required this.buttonKey,
    required CustomerState previousState,
  }) : super.fromPreviousState(
          previousState: previousState.copyWith(
            triggerComponentKey: buttonKey.toString(),
          ),
        );
}

@immutable
final class CreateAccountFormSubmissionFailed extends CustomerState
    with RequestFailedState {
  @override
  final String errorMessage;

  @override
  final Key buttonKey;

  CreateAccountFormSubmissionFailed({
    required this.buttonKey,
    required this.errorMessage,
    required CustomerState previousState,
  }) : super.fromPreviousState(
          previousState: previousState.copyWith(
            triggerComponentKey: buttonKey.toString(),
            triggerComponentValue: '',
          ),
        );
}

@immutable
final class CreateAccountFormSubmissionSuccess extends CustomerState
    with RequestSuccessfulState {
  @override
  final String successMessage;

  @override
  final Key buttonKey;

  CreateAccountFormSubmissionSuccess({
    required this.buttonKey,
    this.successMessage = 'Account has been Created!',
    required CustomerState previousState,
  }) : super.fromPreviousState(
          previousState: previousState.copyWith(
            triggerComponentKey: buttonKey.toString(),
          ),
        );
}

@immutable
final class InvalidCreateAccountFormState extends CustomerState
    with FormInvalidState {
  @override
  final String errorMessage;

  @override
  final Key buttonKey;

  InvalidCreateAccountFormState({
    required this.buttonKey,
    required CustomerState previousState,
    this.errorMessage = 'Please fill all required fields',
  }) : super.fromPreviousState(
          previousState: previousState.copyWith(
            triggerComponentKey: buttonKey.toString(),
          ),
        );
}

@immutable
final class ClearAccountFormState extends CustomerState with ClearFormState {
  @override
  final ValidatableForm form;

  @override
  final Key buttonKey;

  ClearAccountFormState({
    required this.buttonKey,
    required this.form,
  }) : super(
          triggerComponentKey: buttonKey.toString(),
          triggerComponentValue: '',
        );
}

@immutable
final class NavigateToPageFormState extends CustomerState
    with NavigateNextFormState {
  @override
  final NavigablePage nextPage;

  @override
  final Key buttonKey;

  NavigateToPageFormState({
    required this.buttonKey,
    required this.nextPage,
  }) : super(
          triggerComponentKey: buttonKey.toString(),
          triggerComponentValue: '',
        );
}

@immutable
final class NavigateAndReplacePageFormState extends CustomerState
    with NavigateReplaceFormState {
  @override
  final NavigablePage replacingPage;

  @override
  final Key buttonKey;

  NavigateAndReplacePageFormState({
    required this.buttonKey,
    required this.replacingPage,
  }) : super(
          triggerComponentKey: buttonKey.toString(),
          triggerComponentValue: '',
        );
}
class DropdownLoadedState extends CustomerState {
  DropdownLoadedState({
    required List<String> selectedItems,
    required CustomerState previousState,
  }) : super.fromPreviousState(
          previousState: previousState.copyWith(
            selectedItems: selectedItems,
          ),
        );

  @override
  List<Object?> get props => [selectedItems];
}
