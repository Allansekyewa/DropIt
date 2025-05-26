import 'package:DropIT/app_settings.dart';
import 'package:DropIT/core/constants/global_variables.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_event.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_state.dart';
import 'package:DropIT/injection_container.dart';
import 'package:ayinza_commons/utils/validatable_form.dart';
import 'package:shared/utils/bloc_utility_helper.dart';
import 'package:shared/utils/generic_validatable_form.dart';
import 'package:flutter/material.dart';

BlocUtilityHelper authenticationBlocUtil = serviceLocator<
    BlocUtilityHelper<AuthenticationBloc, AuthenticationState>>();

final ValidatableForm authenticationForm = CreateAccountFieldForm.instance;

class FirstNameField extends GenericTextField {
  FirstNameField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'firstname-field',
            ),
            form: authenticationForm,
            labelText: 'Enter First Name',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
            authenticationBloc.add(
                  FirstNameChangedEvent(firstName: value, componentKey: key));
            });
            
           
}



class LastNameField extends GenericTextField {
  LastNameField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'lastname-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Last Name',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
              authenticationBloc.add(
                  LastNameChangedEvent(lastName: value, componentKey: key));
            });
}

class EmailField extends GenericTextField {
  EmailField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'email-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Email Address',
            blocUtil: authenticationBlocUtil,
            keyboardType: TextInputType.text,
            onChanged: (key, value) {
             authenticationBloc
                  .add(EmailChangedEvent(email: value, componentKey: key));
            });
}

class PhoneNumberField extends GenericTextField {
  PhoneNumberField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'phoneNumber-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Phone Number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(PhoneNumberChangedevent(
                  phoneNumber: value, componentKey: key));
            });
}
class LicenseField extends GenericTextField {
 LicenseField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'license-field',
            ),
            form: authenticationForm,
            labelText: 'Enter License/Permit number',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(LicenseChangedEvent(
                 license: value, componentKey: key));
            });
}
class NumberPlateField extends GenericTextField {
 NumberPlateField()
      : super(
            bloc: authenticationBloc,
            key: const Key(
              'NumberPlate-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Vehicle Number Plate',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NumberPlateChangedEvent(
                  numberPlate: value, componentKey: key));
            });
}





class SubmitUserFormButton extends GenericFormSimpleButton {
  final bool isInSubmitNewUser;
  final AuthenticationBloc authenticationBloc;
  SubmitUserFormButton(this.authenticationBloc,   {
    this.isInSubmitNewUser = true,
    
   
  }) : super(
          key: const Key('Submit-User-Info'),
          bloc: authenticationBloc,
          blocUtil: authenticationBlocUtil,
          form: authenticationForm,
          label: isInSubmitNewUser ? "Create Account " : "Edit Account",
          onTap: (key) {
            authenticationBloc.add(SubmitFormEvent(
              key: key,
              inSubmitMode: isInSubmitNewUser,
            ));
          },
        );
}
class NinNumberField extends GenericTextField{
  NinNumberField():super( bloc: authenticationBloc,
            key: const Key(
              'NumberPlate-field',
            ),
            form: authenticationForm,
            labelText: 'Enter Vehicle Number Plate',
            blocUtil: authenticationBlocUtil,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (key, value) {
             authenticationBloc.add(NinChangedEvent(
                 nin: value, componentKey: key));
            });
  
}







class TermsAndAgreementsCheckBox extends GenericCheckbox {
  TermsAndAgreementsCheckBox()
      : super(
          bloc: authenticationBloc,
          form: authenticationForm,
          initialValue: false,
          blocUtil: authenticationBlocUtil,
          key: const Key("Terms-and_conditions"),
          labelText: "Ive read terms and conditons",
          onChanged: (p0, value) {
            authenticationBloc.add(CheckedTermsAgreementEvent(isAgreed: value));
          },
        );
}
