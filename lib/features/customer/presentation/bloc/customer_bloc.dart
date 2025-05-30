import 'package:DropIT/app_settings.dart';
import 'package:DropIT/features/customer/data/model/order_delivery_model.dart';
import 'package:DropIT/features/customer/domain/usecases/create_order_usecase.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_event.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_state.dart';
import 'package:DropIT/features/customer/presentation/pages/customer_dashboard.dart';
import 'package:DropIT/features/customer/presentation/widgets/delivery_form.dart';
import 'package:ayinza_commons/bloc/page_bloc.dart';
import 'package:ayinza_commons/utils/validatable_form.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/entities/failure.dart';

class CustomerBloc extends PageBloc<CustomerEvent, CustomerState> {
  final ValidatableForm deliveryForm = DeliveryForm.instance;
  final CreateOrderUsecase _createOrderUsecase;

  CustomerBloc(this._createOrderUsecase) : super(const CustomerInitial()) {
    on<CustomerFieldChangedEvent>(_onFieldChanged);
    on<SubmitOrderFormEvent>(_submitDeliveryOrder);
    on<NextStepEvent>(_onNextStep);
  }
  Future<void> _onNextStep(NextStepEvent event, Emitter<CustomerState> emit) async {
    if (state.currentStep < 3) { // 0=Senders, 1=Receivers, 2=Package, 3=Summary
      emit(state.copyWith(currentStep: state.currentStep + 1));
    }
  }


  Future<void> _onFieldChanged(
    CustomerFieldChangedEvent event,
    Emitter<CustomerState> emit,
  ) async {
    await handleFieldChanged(
      event, emit, onValidationPassed, onValidationError, deliveryForm,
    );
  }

  CustomerState onValidationPassed(
    CustomerState state, String key, dynamic value,
  ) {
    return CreateOrderValidationFieldPassed(
      previousState: state,
      fieldComponentKey: key,
      fieldComponentValue: value,
    );
  }

  CustomerState onValidationError(
    CustomerState state,
    String errorMessage,
    String fieldComponentKey,
    dynamic fieldComponentValue,
  ) {
    return CreateOrderFieldValidationFailed(
      previousState: state,
      fieldComponentKey: fieldComponentKey,
      fieldComponentValue: fieldComponentValue,
      errorMessage: errorMessage,
    );
  }

  Future<void> _submitDeliveryOrder(
    SubmitOrderFormEvent event,
    Emitter<CustomerState> emit,
  ) async {
    emit(CreateOrderFormSubmissionStateInProgress(
      buttonKey: event.key,
      previousState: state,
    ));

    try {
      if (!await deliveryForm.validate()) {
        emit(InvalidOrderAccountFormState(
          buttonKey: event.key,
          previousState: state,
        ));
        return;
      }

      OrderDeliveryModel orderDelivery = _createOrderFromState(state);
      final Either<Failure, void> results = await _createOrderUsecase(
        CreateOrderParams(orderDelivery),
      );
      final successMessage = "Order Submitted Successfully";

      results.fold(
        (failure) {
          emit(_handleOrderFailure(failure, event.key));
        },
        (_) {
          emit(CreateOrderFormSubmissionSuccess(
            buttonKey: event.key,
            previousState: state,
            successMessage: successMessage,
          ));
          emit(ClearDeliveryFormState(buttonKey: event.key, form: deliveryForm));
          emit(NavigateAndReplacePageFormState(buttonKey: event.key, replacingPage: CustomerHomePage()));
        },
      );
    } catch (e) {
      emit(CreateOrderFormSubmissionFailed(buttonKey: event.key, errorMessage: "Order Not Placed. Un Excepected Error", previousState: state));
    }
  }

  OrderDeliveryModel _createOrderFromState(CustomerState state) {
    return OrderDeliveryModel(
      area: state.areaName,
      category: state.category,
      date: state.date,
      flatNumber: state.flatNumber,
      phoneNumber: state.phoneNumber,
      pinCode: state.pinCode,
      quantity: state.quantity,
      time: state.time,
      userName: state.userName,
      weight: state.weight,
    );
  }

  CreateOrderFormSubmissionFailed _handleOrderFailure(
    Failure failure,
    Key triggerButtonKey,
  ) {
    return CreateOrderFormSubmissionFailed(
      buttonKey: triggerButtonKey,
      errorMessage: failure.errorMessage,
      previousState: state,
    );
  }
}