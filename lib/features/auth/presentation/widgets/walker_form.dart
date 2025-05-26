import 'package:DropIT/app_settings.dart';
import 'package:DropIT/core/constants/global_variables.dart';
import 'package:DropIT/core/enums/delivery_type.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_event.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_state.dart';
import 'package:DropIT/features/auth/presentation/widgets/cyclist_form.dart';
import 'package:DropIT/features/auth/presentation/widgets/motor_cyclist_form.dart';
import 'package:DropIT/features/auth/presentation/widgets/motor_form.dart';
import 'package:DropIT/injection_container.dart';
import 'package:ayinza_commons/utils/validatable_form.dart';
import 'package:flutter/material.dart';
import 'package:shared/utils/bloc_utility_helper.dart';
import 'package:shared/utils/generic_validatable_form.dart';
import 'package:themes/apptheme/color/app_colors.dart';

BlocUtilityHelper authenticationBlocUtil = serviceLocator<
    BlocUtilityHelper<AuthenticationBloc, AuthenticationState>>();
final ValidatableForm walkerkForm = WalkerForm.instance;

class WalkerFirstNameField extends GenericTextField {
  WalkerFirstNameField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'firstname-field',
            ),
            form: walkerkForm,
            labelText: 'Enter First Name',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              authenticationBloc.add(
                  FirstNameChangedEvent(firstName: value, componentKey: key));
            });
}

class WalkerLastNameField extends GenericTextField {
  WalkerLastNameField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'lastname-field',
            ),
            form: walkerkForm,
            labelText: 'Enter Last Name',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              authenticationBloc.add(
                  LastNameChangedEvent(lastName: value, componentKey: key));
            });
}

class WalkerEmailField extends GenericTextField {
  WalkerEmailField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'email-field',
            ),
            form: walkerkForm,
            labelText: 'Enter Email Address',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              authenticationBloc
                  .add(EmailChangedEvent(email: value, componentKey: key));
            });
}

class WalkerPhoneNumberField extends GenericTextField {
  WalkerPhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'phoneNumber-field',
            ),
            form: walkerkForm,
            labelText: 'Enter Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
              authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}

class WalkerNinNumberField extends GenericTextField {
  WalkerNinNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'nin-field',
            ),
            form: walkerkForm,
            labelText: 'Enter Your NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
              authenticationBloc
                  .add(NinChangedEvent(nin: value, componentKey: key));
            });
}

class WalkerRef1PhoneNumberField extends GenericTextField {
  WalkerRef1PhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'ref1phoneNumber-field',
            ),
            form: walkerkForm,
            labelText: 'Enter Referee1 Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
              authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}

class WalkerRef1NinNumberField extends GenericTextField {
  WalkerRef1NinNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'ref1nin-field',
            ),
            form: walkerkForm,
            labelText: 'Enter Refeere1 NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
              authenticationBloc
                  .add(NinChangedEvent(nin: value, componentKey: key));
            });
}

class WalkerRef2PhoneNumberField extends GenericTextField {
  WalkerRef2PhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'ref2phoneNumber-field',
            ),
            form: walkerkForm,
            labelText: 'Enter Referee2 Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
              authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}

class WalkerRef2NinNumberField extends GenericTextField {
  WalkerRef2NinNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'ref2nin-field',
            ),
            form: walkerkForm,
            labelText: 'Enter Refeere2 NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
              authenticationBloc
                  .add(NinChangedEvent(nin: value, componentKey: key));
            });
}

class SubmitDeliveryTypeButton extends GenericFormSimpleButton {
  final DeliveryType deliveryType;
  SubmitDeliveryTypeButton(
    this.deliveryType,
  ) : super(
          bloc: authenticationBloc,
          blocUtil: authenticationBlocUtil,
          key: const Key('Submit-type-field'),
          form: _getFormForType(deliveryType),
          label: 'Submit',
          borderColor: AppColors.orangeColor,
          onTap: (key) {
            authenticationBloc.add(SubmitEvent(key: key));
          },
        );
}

ValidatableForm _getFormForType(DeliveryType deliveryType) {
  switch (deliveryType) {
    case DeliveryType.walker:
      return walkerkForm;
    case DeliveryType.cyclist:
      return cyclistForm;
    case DeliveryType.motorCycle:
      return motorCyclistForm;
      case DeliveryType.motor:
      return motorForm;
  }
}
