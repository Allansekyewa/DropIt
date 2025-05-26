import 'dart:async';

import 'package:DropIT/app_settings.dart';
import 'package:DropIT/core/enums/delivery_type.dart';
import 'package:DropIT/features/auth/domain/usecase/create_customer_acc.dart';
import 'package:DropIT/features/auth/domain/usecase/create_driver_acc.dart';
import 'package:DropIT/features/auth/domain/usecase/update_customer_acc.dart';
import 'package:DropIT/features/auth/domain/usecase/update_driver_acc.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_event.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_state.dart';
import 'package:DropIT/features/auth/presentation/widgets/create_acc_form.dart';
import 'package:ayinza_commons/bloc/page_bloc.dart';
import 'package:ayinza_commons/utils/validatable_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/entities/failure.dart';

class AuthenticationBloc
    extends PageBloc<AuthenticationEvent, AuthenticationState> {
  final CreateCustomerAccountUsecase _createCustomerAccountUsecase;
  final CreateDriverAccountUsecase _createDriverAccountUsecase;
  final UpdateCustomerAccountUsecase _updateCustomerAccountUsecase;
  final UpdateDriverAccountUsecase _updateDriverAccountUsecase;
  late ValidatableForm selectedForm;

  AuthenticationBloc(
      this._createCustomerAccountUsecase,
      this._createDriverAccountUsecase,
      this._updateCustomerAccountUsecase,
      this._updateDriverAccountUsecase)
      : super(const AuthenticationInitial()) {
   // on<SubmitFormEvent>(_submitCreatedUserForm);
    on<CreateAccountFieldChangedEvent>(_onFieldChanged);
    on<CheckedTermsAgreementEvent>(_onCheckedTermsAgreement);
    on<TappedEvent>(_onTapped);
    on<SelectDeliveryTypeEvent>(_onSelectedType);
     selectedForm = _getFormForType(DeliveryType.walker);
  }
  ValidatableForm _getFormForType(DeliveryType deliveryType) {
    switch (deliveryType) {
      case DeliveryType.walker:
        return WalkerForm.instance;
      case DeliveryType.cyclist:
        return CyclistForm.instance;
      case DeliveryType.motorCycle:
        return MotorCyclistForm.instance;
        case DeliveryType.motor:
        return MotorForm.instance;
    }
  }
    FutureOr<void> _onSelectedType(
      SelectDeliveryTypeEvent event, Emitter<AuthenticationState> emit) async {
    
    emit(state.copyWith(
      selectDeliveryType: event.deliveryType,
   
    ));

    selectedForm = _getFormForType(event.deliveryType);
  }


  void _onCheckedTermsAgreement(
      CheckedTermsAgreementEvent event, Emitter<AuthenticationState> emit) {
    final updatedState = state.copyWith(
      isTermsAgreed: !(state.isTermsAgreed ?? false),
    );

    // Emit the new state
    emit(updatedState);
  }

  void _onTapped(TappedEvent event, Emitter<AuthenticationState> emit) {
    emit(state.copyWith(
      isTapped: true,
    ));
  }

  FutureOr<void> _onFieldChanged(CreateAccountFieldChangedEvent event,
      Emitter<AuthenticationState> emit) async {
    await handleFieldChanged(
        event, emit, onValidationPassed, onValidationError, authenticationForm);
  }

  AuthenticationState onValidationPassed(
      AuthenticationState state, String key, dynamic value) {
    return CreateAccountValidationFieldPassed(
        previousState: state,
        fieldComponentKey: key,
        fieldComponentValue: value);
  }

  AuthenticationState onValidationError(AuthenticationState previousState,
      String errorMessage, String fieldComponentKey, fieldComponentValue) {
    return CreateAccountFieldValidationFailed(
        previousState: previousState,
        fieldComponentKey: fieldComponentKey,
        fieldComponentValue: fieldComponentValue,
        errorMessage: errorMessage);
  }

  // Future<void> _submitCreatedUserForm(
  //     SubmitFormEvent event, Emitter<AuthenticationState> emit) async {
  //   emit(CreateAccountFormSubmissionStateInProgress(
  //     previousState: state,
  //     buttonKey: event.key,
  //   ));
  //   await Future.delayed(const Duration(seconds: 50));

  //   try {
  //     if (!(await authenticationForm.validate())) {
  //       emit(InvalidCreateAccountFormState(
  //         buttonKey: event.key,
  //         previousState: state,
  //       ));
  //       return;
  //     }

  //     CustomerModel = _createUserDataFromState(state);

  //     final Either<Failure, void> results = event.inSubmitMode
  //         ? await _createAccountUseCase(CreateAccountParams(createUserAccount))
  //         : await _modifyAccount(ModifyAccountParams(createUserAccount));

  //     final successMessage = event.inSubmitMode
  //         ? "Account Created Successfully"
  //         : "Account Updated Successfully";

  //     results.fold((failure) {
  //       emit(_handleCreationFailure(failure, event.key));
  //     }, (_) {
  //       emit(
  //         CreateAccountFormSubmissionSuccess(
  //           buttonKey: event.key,
  //           previousState: state,
  //           successMessage: successMessage,
  //         ),
  //       );

  //       emit(
  //         ClearAccountFormState(
  //           buttonKey: event.key,
  //           form: authenticationForm,
  //         ),
  //       );
  //       emit(NavigateAndReplacePageFormState(
  //         buttonKey: event.key,
  //         replacingPage: const NeoBankToLoginPage(
  //           showBackButton: false,
  //         ),
  //       ));
  //     });
  //   } catch (e) {
  //     emit(CreateAccountFormSubmissionFailed(
  //       buttonKey: event.key,
  //       errorMessage: "An unexpected error occurred",
  //       previousState: state,
  //     ));
  //   }
  // }

  // CustomerModel _createUserDataFromState(AuthenticationState state) {
  //   return CustomerModel(
  //     email: state.email,
  //     phoneNumber: state.phoneNumber,
  //     firstName: state.firstName,
  //     lastName: state.lastName,
  //   );
  // }

  // CreateAccountFormSubmissionFailed _handleCreationFailure(
  //     Failure failure, Key triggerButtonKey) {
  //   return CreateAccountFormSubmissionFailed(
  //       buttonKey: triggerButtonKey,
  //       errorMessage: failure.errorMessage,
  //       previousState: state);
  // }
}
