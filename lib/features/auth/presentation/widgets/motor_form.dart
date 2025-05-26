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
    final ValidatableForm motorForm = MotorForm.instance;
    class MotorFirstNameField extends GenericTextField {
  MotorFirstNameField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'firstname-field',
            ),
            form: motorForm ,
            labelText: 'Enter First Name',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
             authenticationBloc.add(
                  FirstNameChangedEvent(firstName: value, componentKey: key));
            });
   
}
class MotorLastNameField extends GenericTextField {
  MotorLastNameField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'lastname-field',
            ),
            form: motorForm ,
            labelText: 'Enter Last Name',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              authenticationBloc.add(
                  LastNameChangedEvent(lastName: value, componentKey: key));
            });}

            class MotorEmailField extends GenericTextField {
  MotorEmailField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'email-field',
            ),
            form:  motorForm ,
            labelText: 'Enter Email Address',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
             authenticationBloc
                  .add(EmailChangedEvent(email: value, componentKey: key));
            });
}
class MotorPhoneNumberField extends GenericTextField {
  MotorPhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'phoneNumber-field',
            ),
            form: motorForm ,
            labelText: 'Enter Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}
class MotorNinNumberField extends GenericTextField{
  MotorNinNumberField():super( bloc: authenticationBloc,
            key: const Key(
              'nin-field',
            ),
            form:  motorForm ,
            labelText: 'Enter Your NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NinChangedEvent(
                 nin: value, componentKey: key));
            });
  
}
class MotorRef1PhoneNumberField extends GenericTextField {
  MotorRef1PhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'ref1phoneNumber-field',
            ),
            form: motorForm ,
            labelText: 'Enter Referee1 Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}
class MotorRef1NinNumberField extends GenericTextField{
  MotorRef1NinNumberField():super( bloc: authenticationBloc,
            key: const Key(
              'ref1nin-field',
            ),
            form: motorForm ,
            labelText: 'Enter Refeere1 NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NinChangedEvent(
                 nin: value, componentKey: key));
            });
  
}
class MotorRef2PhoneNumberField extends GenericTextField {
  MotorRef2PhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'ref2phoneNumber-field',
            ),
            form: motorForm ,
            labelText: 'Enter Referee2 Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}
class MotorRef2NinNumberField extends GenericTextField{
  MotorRef2NinNumberField():super( bloc: authenticationBloc,
            key: const Key(
              'ref2nin-field',
            ),
            form:  motorForm ,
            labelText: 'Enter Refeere2 NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NinChangedEvent(
                 nin: value, componentKey: key));
            });
  
}
class MotorLicenseField extends GenericTextField {
 MotorLicenseField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'license-field',
            ),
            form: motorForm ,
            labelText: 'Enter License/Permit number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(LicenseChangedEvent(
                 license: value, componentKey: key));
});}

class MotorNumberPlateField extends GenericTextField {
 MotorNumberPlateField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'NumberPlate-field',
            ),
            form:motorForm ,
            labelText: 'Enter Vehicle Number Plate',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NumberPlateChangedEvent(
                  numberPlate: value, componentKey: key));
            });
}