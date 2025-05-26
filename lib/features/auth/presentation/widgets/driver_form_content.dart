import 'package:DropIT/core/enums/delivery_type.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_state.dart';
import 'package:DropIT/features/auth/presentation/widgets/cyclist_form.dart';
import 'package:DropIT/features/auth/presentation/widgets/motor_cyclist_form.dart';
import 'package:DropIT/features/auth/presentation/widgets/motor_form.dart';

import 'package:DropIT/features/auth/presentation/widgets/walker_form.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverFormContent extends StatelessWidget {
  const DriverFormContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        buildWhen: (previous, current) =>
            previous.selectDeliveryType != current.selectDeliveryType,
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: _buildSelectedForm(
                    state.selectDeliveryType ?? DeliveryType.walker),
              )
            ],
          );
        },
      ),
    );
  }
}

Widget _buildSelectedForm(DeliveryType selectDeliveryType) {
  switch (selectDeliveryType) {
    case DeliveryType.walker:
      return _Walker();
    case DeliveryType.cyclist:
      return _Cyclist();
    case DeliveryType.motorCycle:
      return _MotorCyclist();
    case DeliveryType.motor:
      return _Motor();
  }
}

class _Walker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" All fields are required"),
          WalkerFirstNameField(),
          verticalSpaceSmall,
          WalkerLastNameField(),
          verticalSpaceSmall,
          WalkerPhoneNumberField(),
          verticalSpaceSmall,
          WalkerEmailField(),
          verticalSpaceSmall,
          WalkerNinNumberField(),
          verticalSpaceSmall,
          WalkerRef1PhoneNumberField(),
          verticalSpaceSmall,
          WalkerRef1NinNumberField(),
          verticalSpaceSmall,
          WalkerRef2PhoneNumberField(),
          verticalSpaceSmall,
          WalkerRef2NinNumberField(),
        ],
      ),
    );
  }
}

class _Cyclist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CyclistFirstNameField(),
          verticalSpaceSmall,
          CyclistLastNameField(),
          verticalSpaceSmall,
          CyclistPhoneNumberField(),
          verticalSpaceSmall,
          CyclistEmailField(),
          verticalSpaceSmall,
          CyclistNinNumberField(),
          verticalSpaceSmall,
          CyclistRef1PhoneNumberField(),
          verticalSpaceSmall,
          CyclistRef1NinNumberField(),
          verticalSpaceSmall,
          CyclistRef2PhoneNumberField(),
          verticalSpaceSmall,
          CyclistRef2NinNumberField(),
        ],
      ),
    );
  }
}

class _MotorCyclist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MotorCyclistFirstNameField(),
          verticalSpaceSmall,
          MotorCyclistLastNameField(),
          verticalSpaceSmall,
          MotorCyclistPhoneNumberField(),
          verticalSpaceSmall,
          MotorCyclistEmailField(),
          verticalSpaceSmall,
          MotorCyclistLicenseField(),
          verticalSpaceSmall,
          MotorCyclistNumberPlateField(),
          verticalSpaceSmall,
          MotorCyclistNinNumberField(),
          verticalSpaceSmall,
          MotorCyclistRef1PhoneNumberField(),
          verticalSpaceSmall,
          MotorCyclistRef1NinNumberField(),
          verticalSpaceSmall,
          MotorCyclistRef2PhoneNumberField(),
          verticalSpaceSmall,
          MotorCyclistRef2NinNumberField(),
        ],
      ),
    );
  }
}

class _Motor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MotorFirstNameField(),
          verticalSpaceSmall,
          MotorLastNameField(),
          verticalSpaceSmall,
          MotorPhoneNumberField(),
          verticalSpaceSmall,
          MotorEmailField(),
          verticalSpaceSmall,
          MotorNinNumberField(),
          verticalSpaceSmall,
          MotorLicenseField(),
          verticalSpaceSmall,
          MotorNumberPlateField(),
          verticalSpaceSmall,
          MotorRef1PhoneNumberField(),
          verticalSpaceSmall,
          MotorRef1NinNumberField(),
          verticalSpaceSmall,
          MotorRef2PhoneNumberField(),
          verticalSpaceSmall,
          MotorRef2NinNumberField(),
        ],
      ),
    );
  }
}
