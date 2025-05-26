import 'package:DropIT/core/enums/delivery_type.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_state.dart';
import 'package:DropIT/features/auth/presentation/widgets/driver_form_content.dart';
import 'package:DropIT/features/auth/presentation/widgets/drivers_tab_selector.dart';
import 'package:DropIT/features/auth/presentation/widgets/walker_form.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:ayinza_page_scaffold/page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterDriver extends StatelessWidget {
  const RegisterDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(bodyContent:Padding(padding: pagePadding,child: Column(
      children: [
        DriversTabSelector(),
        verticalSpaceSmall,
        DriverFormContent(),
      ],
    ),),
    pageTitle: "Register Delivery Personel",
    footerContent: SafeArea(child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            return Padding(
              padding: pagePadding,
              child: IntrinsicHeight(
                child: Center(
                  child: SubmitDeliveryTypeButton(
                    state.selectDeliveryType??DeliveryType.walker,
                  ),
                ),
              ),
            );
          },
        ),),
    
    );
  }
}