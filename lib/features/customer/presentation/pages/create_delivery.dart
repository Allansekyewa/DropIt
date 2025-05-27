import 'package:DropIT/features/customer/presentation/widgets/order_summary.dart';

import 'package:DropIT/features/customer/presentation/widgets/delivery_form.dart';
import 'package:DropIT/features/customer/presentation/widgets/package_widget.dart';
import 'package:DropIT/features/customer/presentation/widgets/position_indicator.dart';
import 'package:DropIT/features/customer/presentation/widgets/recievers_widget.dart';
import 'package:DropIT/features/customer/presentation/widgets/senders_widget.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:ayinza_page_scaffold/page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';

class CreateDelivery extends StatelessWidget {
  const CreateDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
       footerContent: SafeArea(
        child: Padding(
          padding: pagePadding,
          child: IntrinsicHeight(child: Center(child: NextButton())),
        ),
      ),
      pageTitle: "Create Delivery",
      bodyContent: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          verticalSpaceSmall,
         TrackingProgressIndicator(
          currentStep: 1, 
          circleSize: 30.0,
          lineWidth: 1.0,
          activeColor: AppColors.green,
          inactiveColor: AppColors.lightGrey,
        ),
        verticalSpaceSmall,
       //SendersWidget(),
       // RecieversWidget()
         // PackageWidget()
         OrderSummary()
        ],
            ),
      ));
  }
}