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
    final ValidatableForm cyclistForm = CyclistForm.instance;
    class CyclistFirstNameField extends GenericTextField {
  CyclistFirstNameField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'firstname-field',
            ),
            form: cyclistForm,
            labelText: 'Enter First Name',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
             authenticationBloc.add(
                  FirstNameChangedEvent(firstName: value, componentKey: key));
            });
   
}
class CyclistLastNameField extends GenericTextField {
  CyclistLastNameField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'lastname-field',
            ),
            form: cyclistForm,
            labelText: 'Enter Last Name',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              authenticationBloc.add(
                  LastNameChangedEvent(lastName: value, componentKey: key));
            });}

            class CyclistEmailField extends GenericTextField {
  CyclistEmailField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'email-field',
            ),
            form:  cyclistForm,
            labelText: 'Enter Email Address',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
             authenticationBloc
                  .add(EmailChangedEvent(email: value, componentKey: key));
            });
}
class CyclistPhoneNumberField extends GenericTextField {
  CyclistPhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'phoneNumber-field',
            ),
            form:  cyclistForm,
            labelText: 'Enter Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}
class CyclistNinNumberField extends GenericTextField{
  CyclistNinNumberField():super( bloc: authenticationBloc,
            key: const Key(
              'nin-field',
            ),
            form:  cyclistForm,
            labelText: 'Enter Your NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NinChangedEvent(
                 nin: value, componentKey: key));
            });
  
}
class CyclistRef1PhoneNumberField extends GenericTextField {
  CyclistRef1PhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'ref1phoneNumber-field',
            ),
            form:  cyclistForm,
            labelText: 'Enter Referee1 Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}
class CyclistRef1NinNumberField extends GenericTextField{
  CyclistRef1NinNumberField():super( bloc: authenticationBloc,
            key: const Key(
              'ref1nin-field',
            ),
            form: cyclistForm,
            labelText: 'Enter Refeere1 NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NinChangedEvent(
                 nin: value, componentKey: key));
            });
  
}
class CyclistRef2PhoneNumberField extends GenericTextField {
  CyclistRef2PhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'ref2phoneNumber-field',
            ),
            form: cyclistForm,
            labelText: 'Enter Referee2 Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}
class CyclistRef2NinNumberField extends GenericTextField{
  CyclistRef2NinNumberField():super( bloc: authenticationBloc,
            key: const Key(
              'ref2nin-field',
            ),
            form:  cyclistForm,
            labelText: 'Enter Refeere2 NIN',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NinChangedEvent(
                 nin: value, componentKey: key));
            });
  
}