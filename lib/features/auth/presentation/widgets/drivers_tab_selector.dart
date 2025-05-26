

import 'package:DropIT/core/constants/global_variables.dart';
import 'package:DropIT/core/enums/delivery_type.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_event.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:ayinza_form_components/tabs/tab_selector/tab_selector.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class DriversTabSelector extends StatelessWidget {
  const DriversTabSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Choose what suits you",
          style: context.theme.appTextTheme.medium,
        ),
        verticalSpaceSmall,
        SizedBox(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: TabSelector(
              thumbColor: AppColors.blueColor,
              tabItems: const ["Walker", "Cyclist", "MotorCycle","Motor"],
              action: (index) {
                if (index != null) {
                  final deliveryType = _getDeliveryType(index);
                  authenticationBloc.add(
                    SelectDeliveryTypeEvent(deliveryType: deliveryType),
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }

 DeliveryType _getDeliveryType(int index) {
    switch (index) {
      case 0:
        return DeliveryType.walker;
      case 1:
        return DeliveryType.cyclist;
      case 2:
        return DeliveryType.motorCycle;
      default:
        return DeliveryType.motor;
    }
  }
}