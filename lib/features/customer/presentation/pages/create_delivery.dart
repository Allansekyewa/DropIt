import 'package:DropIT/features/customer/presentation/widgets/position_indicator.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:ayinza_page_scaffold/page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';

class CreateDelivery extends StatelessWidget {
  const CreateDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      pageTitle: "Create Delivery",
      bodyContent: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        verticalSpaceSmall,
       TrackingProgressIndicator(
  currentStep: 1, 
  circleSize: 30.0,
  lineWidth: 1.0,
  activeColor: AppColors.green,
  inactiveColor: AppColors.lightGrey,
)
      ],
    ));
  }
}