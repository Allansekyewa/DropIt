import 'package:DropIT/features/customer/presentation/bloc/customer_bloc.dart';
import 'package:DropIT/features/customer/presentation/widgets/order_summary.dart';
import 'package:DropIT/features/customer/presentation/widgets/package_widget.dart';
import 'package:DropIT/features/customer/presentation/widgets/position_indicator.dart';
import 'package:DropIT/features/customer/presentation/widgets/recievers_widget.dart';
import 'package:DropIT/features/customer/presentation/widgets/senders_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes/apptheme/color/app_colors.dart';

class DeliveryStepperScreen extends StatelessWidget {
  const DeliveryStepperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _ProgressIndicator(),
        Expanded(child: _CurrentStepContent()),
      ],
    );
  }
}

class _ProgressIndicator extends StatelessWidget {
  const _ProgressIndicator();

  @override
  Widget build(BuildContext context) {
    final currentStep = context.select(
      (CustomerBloc bloc) => bloc.state.currentStep,
    );

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TrackingProgressIndicator(
        currentStep: currentStep + 1,
        lineWidth: 0.5,
        circleSize: 20,
        inactiveColor: AppColors.lightGrey,
        activeColor: AppColors.blueColor,
      ),
    );
  }
}

class _CurrentStepContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentStep = context.select(
      (CustomerBloc bloc) => bloc.state.currentStep,
    );

    return IndexedStack(
      index: currentStep,
      children: [
        SendersWidget(),
        RecieversWidget(),
        PackageWidget(),
        OrderSummary(),
      ],
    );
  }
}
