import 'package:DropIT/app_settings.dart';
import 'package:DropIT/core/constants/global_variables.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_event.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_state.dart';
import 'package:DropIT/injection_container.dart';
import 'package:ayinza_commons/utils/validatable_form.dart';
import 'package:flutter/material.dart';
import 'package:shared/utils/bloc_utility_helper.dart';
import 'package:shared/utils/generic_validatable_form.dart';

BlocUtilityHelper authenticationBlocUtil = serviceLocator<
    BlocUtilityHelper<AuthenticationBloc, AuthenticationState>>();
    final ValidatableForm motorCyclistForm = MotorCyclistForm.instance;
    class MotorCyclistFirstNameField extends GenericTextField {
  MotorCyclistFirstNameField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'firstname-field',
            ),
            form: motorCyclistForm ,
            labelText: 'Enter First Name',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
             authenticationBloc.add(
                  FirstNameChangedEvent(firstName: value, componentKey: key));
            });
   
}
class MotorCyclistLastNameField extends GenericTextField {
  MotorCyclistLastNameField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'lastname-field',
            ),
            form: motorCyclistForm ,
            labelText: 'Enter Last Name',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              authenticationBloc.add(
                  LastNameChangedEvent(lastName: value, componentKey: key));
            });}

            class MotorCyclistEmailField extends GenericTextField {
  MotorCyclistEmailField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'email-field',
            ),
            form:  motorCyclistForm ,
            labelText: 'Enter Email Address',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
             authenticationBloc
                  .add(EmailChangedEvent(email: value, componentKey: key));
            });
}
class MotorCyclistPhoneNumberField extends GenericTextField {
  MotorCyclistPhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'phoneNumber-field',
            ),
            form: motorCyclistForm ,
            labelText: 'Enter Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}
class MotorCyclistNinNumberField extends GenericTextField{
  MotorCyclistNinNumberField():super( bloc: authenticationBloc,
            key: const Key(
              'nin-field',
            ),
            form:  motorCyclistForm ,
            labelText: 'Enter Your NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NinChangedEvent(
                 nin: value, componentKey: key));
            });
  
}
class MotorCyclistRef1PhoneNumberField extends GenericTextField {
  MotorCyclistRef1PhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'ref1phoneNumber-field',
            ),
            form:  motorCyclistForm ,
            labelText: 'Enter Referee1 Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}
class MotorCyclistRef1NinNumberField extends GenericTextField{
  MotorCyclistRef1NinNumberField():super( bloc: authenticationBloc,
            key: const Key(
              'ref1nin-field',
            ),
            form: motorCyclistForm ,
            labelText: 'Enter Refeere1 NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NinChangedEvent(
                 nin: value, componentKey: key));
            });
  
}
class MotorCyclistRef2PhoneNumberField extends GenericTextField {
  MotorCyclistRef2PhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'ref2phoneNumber-field',
            ),
            form: motorCyclistForm ,
            labelText: 'Enter Referee2 Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}
class MotorCyclistRef2NinNumberField extends GenericTextField{
  MotorCyclistRef2NinNumberField():super( bloc: authenticationBloc,
            key: const Key(
              'ref2nin-field',
            ),
            form:  motorCyclistForm ,
            labelText: 'Enter Refeere2 NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NinChangedEvent(
                 nin: value, componentKey: key));
            });
  
}
class MotorCyclistLicenseField extends GenericTextField {
 MotorCyclistLicenseField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'license-field',
            ),
            form: motorCyclistForm,
            labelText: 'Enter License/Permit number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(LicenseChangedEvent(
                 license: value, componentKey: key));
});}

class MotorCyclistNumberPlateField extends GenericTextField {
 MotorCyclistNumberPlateField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'NumberPlate-field',
            ),
            form: motorCyclistForm,
            labelText: 'Enter Vehicle Number Plate',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NumberPlateChangedEvent(
                  numberPlate: value, componentKey: key));
            });
}