import 'package:DropIT/app_settings.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_event.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_state.dart';
import 'package:ayinza_commons/bloc/page_bloc.dart';
import 'package:ayinza_commons/utils/validatable_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerBloc extends PageBloc<CustomerEvent,CustomerState>{
   final ValidatableForm topUpWalletForm = DeliveryForm.instance;
  CustomerBloc():super(const CustomerInitial()){
    on<CustomerFieldChangedEvent>(_onFieldChanged);
  }
  
  Future<void> _onFieldChanged(CustomerFieldChangedEvent event,
      Emitter<CustomerState> emit) async {
    await handleFieldChanged(
        event, emit, onValidationPassed, onValidationError, topUpWalletForm);
  }
 CustomerState onValidationPassed(
     CustomerState state, String key, dynamic value) {
    return CreateOrderValidationFieldPassed(
      previousState: state,
      fieldComponentKey: key,
      fieldComponentValue: value,
    );
  }
 CustomerState onValidationError(CustomerState state,
      String errorMessage, String fieldComponentKey, fieldComponentValue) {
    return CreateOrderFieldValidationFailed(
      previousState: state,
      fieldComponentKey: fieldComponentKey,
      fieldComponentValue: fieldComponentValue,
      errorMessage: errorMessage,
    );
  }
 
}