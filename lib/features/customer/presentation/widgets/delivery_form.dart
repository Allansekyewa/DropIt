import 'package:DropIT/app_settings.dart';
import 'package:DropIT/core/constants/global_variables.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_bloc.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_event.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_state.dart';
import 'package:DropIT/injection_container.dart';
import 'package:ayinza_commons/utils/validatable_form.dart';
import 'package:flutter/material.dart';
import 'package:shared/utils/bloc_utility_helper.dart';
import 'package:shared/utils/generic_validatable_form.dart';

BlocUtilityHelper customerBlocUtil =
    serviceLocator<BlocUtilityHelper<CustomerBloc, CustomerState>>();
final ValidatableForm authenticationForm = DeliveryForm.instance;

class SendersNameField extends GenericTextField {
  SendersNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'sendersname-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Your Names',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(SendersNameChangedEvent(
                  sendersName: value, componentKey: key));
            });
}

class RecieversNameField extends GenericTextField {
  RecieversNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'recieversName-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Recievers Names',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(
                  RecieversNameChangedEvent(name: value, componentKey: key));
            });
}

class SenderFlatNoNameField extends GenericTextField {
  SenderFlatNoNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'sendeersflatNo-field',
            ),
            form: authenticationForm,
            labelText: 'EnterYour Flat Number',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(SenderDoorOrFlatNoChangedevent(
                  senderFlatNo: value, componentKey: key));
            });
}

class RecieverFlatNoNameField extends GenericTextField {
  RecieverFlatNoNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'recieverflatlatNo-field',
            ),
            form: authenticationForm,
            labelText: 'EnterYour eciever Flat Number',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(RecieverDoorOrFlatNoChangedevent(
                flatNo: value,
                componentKey: key,
              ));
            });
}

class SendersPhoneNameField extends GenericTextField {
  SendersPhoneNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'endersPhoneNumber-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Your PhoneNumber',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(SendersNameChangedEvent(
                sendersName: value,
                componentKey: key,
              ));
            });
}

class RecieversPhoneNameField extends GenericTextField {
  RecieversPhoneNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'recieverssPhoneNumber-field',
            ),
            form: authenticationForm,
            labelText: 'Enter recievers PhoneNumber',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(SendersNameChangedEvent(
                sendersName: value,
                componentKey: key,
              ));
            });
}

class SendersAreaNameField extends GenericTextField {
  SendersAreaNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'sendersAre-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Your Area ',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(SenderAreaChangedevent(
                senderArea: value,
                componentKey: key,
              ));
            });
}

class RecieversAreaNameField extends GenericTextField {
  RecieversAreaNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'recieversArea-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Recievers Area ',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(RecieverAreaChangedevent(
                recieverArea: value,
                componentKey: key,
              ));
            });
}

class SendersPinField extends GenericTextField {
  SendersPinField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'senderspin-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Senders Pin ',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(SenderPinCodeChangedevent(
                senderPin: value,
                componentKey: key,
              ));
            });
}

class CategoryField extends GenericDropdownCheckbox {
  CategoryField(
      {required super.key,
      required super.form,
      required super.bloc,
      required super.hintText,
      required super.onChanged,
      required super.blocUtil,
      required super.items});
}

class WeightField extends GenericDropdownCheckbox {
  WeightField(
      {required super.key,
      required super.form,
      required super.bloc,
      required super.hintText,
      required super.onChanged,
      required super.blocUtil,
      required super.items});
}
