import 'package:DropIT/app_settings.dart';
import 'package:DropIT/core/constants/constants.dart';
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
final ValidatableForm deliveryForm = DeliveryForm.instance;

class SendersNameField extends GenericTextField {
  SendersNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'sendersname-field',
            ),
            form: deliveryForm,
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
            form: deliveryForm,
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
            form: deliveryForm,
            labelText: 'Enter Your Flat Number',
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
            form: deliveryForm,
            labelText: 'Enter  receiver Flat Number',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(RecieverDoorOrFlatNoChangedevent(
                flatNo: value,
                componentKey: key,
              ));
            });
}

class SendersPhoneNameField extends GenericPhoneField {
  SendersPhoneNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'SendersPhoneNumber-field',
            ),
            form: deliveryForm,
           
            blocUtil: customerBlocUtil,
     
            onChanged: (key, value) {
              customerBloc.add(SendersNameChangedEvent(
                sendersName: value,
                componentKey: key,
              ));
            });
}

class RecieversPhoneNameField extends GenericPhoneField {
  RecieversPhoneNameField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'recieverssPhoneNumber-field',
            ),
            form: deliveryForm,
            
            blocUtil: customerBlocUtil,
        
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
            form: deliveryForm,
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
            form: deliveryForm,
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
            form: deliveryForm,
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

class QuantityField extends GenericTextField {
  QuantityField()
      : super(
            bloc: customerBloc,
            key: const Key(
              'quantity-field',
            ),
            form: deliveryForm,
            labelText: 'Enter quantity ',
            blocUtil: customerBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              customerBloc.add(QuantityChangedevent(
                quantity: value,
                componentKey: key,
              ));
            });
}


class WeightField extends GenericDropdownCheckbox {
  WeightField()
      : super(
            bloc: customerBloc,
            blocUtil: customerBlocUtil,
            form:deliveryForm,
            key: const Key('weight-field'),
            items: weightTypes,
            hintText: 'Weight',
            onChanged: (key, value) {
              customerBloc.add(DropdownSelectionChangedEvent(
                componentKey: key,
                selectedItems: value,
              ));
            });
}
class CategoryField extends GenericDropdownCheckbox {
  CategoryField()
      : super(
            bloc: customerBloc,
            blocUtil: customerBlocUtil,
            form:deliveryForm,
            key: const Key('category-field'),
            items: categoryTypes,
            hintText: 'Category',
            onChanged: (key, value) {
              customerBloc.add(DropdownSelectionChangedEvent(
                componentKey: key,
                selectedItems: value,
              ));
            });
}
class DeliveryTypeField extends GenericDropdownCheckbox {
  DeliveryTypeField()
      : super(
            bloc: customerBloc,
            blocUtil: customerBlocUtil,
            form:deliveryForm,
            key: const Key('category-field'),
            items: deliveryTypes,
            hintText: 'Choose Delivery',
            onChanged: (key, value) {
              customerBloc.add(DropdownSelectionChangedEvent(
                componentKey: key,
                selectedItems: value,
              ));
            });
}

class NextButton extends GenericFormSimpleButton {
  NextButton()
      : super(
            bloc: customerBloc,
            key: const Key("next-button"),
            form: deliveryForm,
            label: "Next",
            onTap: (po) {},
            blocUtil: customerBlocUtil);
}
class SubmitOrderFormButton extends GenericFormSimpleButton {
  
  final CustomerBloc customerBloc;
  SubmitOrderFormButton(this.customerBloc   

    
   
  ) : super(
          key: const Key('Submit-User-Info'),
          bloc: customerBloc,
          blocUtil: customerBlocUtil,
          form: deliveryForm,
          label:  "Edit Account",
          onTap: (key) {
            customerBloc.add(SubmitOrderFormEvent(
              key
            
            ));
          },
        );
}