import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';

class BriefDeliveryTracker extends StatelessWidget {
  final int currentStep; // from 1 to 5
  final double circleSize;
  final double lineWidth;
  final Color activeColor;
  final Color inactiveColor;

  const BriefDeliveryTracker({
    super.key,
    required this.currentStep,
    this.circleSize = 40.0,
    this.lineWidth = 3.0,
    this.activeColor = AppColors.blueColor,
    this.inactiveColor = Colors.grey,
  }) : assert(currentStep >= 1 && currentStep <= 5, 'Current step must be between 1 and 5');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.black, width: 0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildStep(1),
              _buildConnectorLine(1),
              _buildStep(2),
              _buildConnectorLine(2),
              _buildStep(3),
              _buildConnectorLine(3),
              _buildStep(4),
              _buildConnectorLine(4),
              _buildStep(5),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Kampala <----------> Kasese',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildStep(int stepNumber) {
    if (stepNumber == currentStep) {
      return _buildCarStepCircle(stepNumber);
    } else {
      return _buildStepCircle(stepNumber);
    }
  }

  Widget _buildStepCircle(int stepNumber) {
    final isActive = stepNumber < currentStep;
    return Container(
      width: circleSize,
      height: circleSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? activeColor : inactiveColor,
      ),
      child: Center(
        child: Text(
          stepNumber.toString(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: circleSize * 0.3,
          ),
        ),
      ),
    );
  }

  Widget _buildCarStepCircle(int stepNumber) {
    return Container(
      width: circleSize,
      height: circleSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: activeColor,
      ),
      child: Center(
        child: Icon(
          Icons.local_shipping_outlined,
          color: Colors.white,
          size: circleSize * 0.6,
        ),
      ),
    );
  }

  Widget _buildConnectorLine(int stepNumber) {
    final isActive = stepNumber < currentStep;
    return Container(
      height: lineWidth,
      width: circleSize,
      color: isActive ? activeColor : inactiveColor,
    );
  }
}
