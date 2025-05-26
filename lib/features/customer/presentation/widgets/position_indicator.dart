import 'package:flutter/material.dart';

class TrackingProgressIndicator extends StatelessWidget {
  final int currentStep;
  final double circleSize;
  final double lineWidth;
  final Color activeColor;
  final Color inactiveColor;

  const TrackingProgressIndicator({
    super.key,
    required this.currentStep,
    this.circleSize = 40.0,
    this.lineWidth = 2.0,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
  }) : assert(currentStep >= 1 && currentStep <= 4, 'Current step must be between 1 and 4');

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildStepCircle(1),
        _buildConnectorLine(1),
        _buildStepCircle(2),
        _buildConnectorLine(2),
        _buildStepCircle(3),
        _buildConnectorLine(3),
        _buildStepCircle(4),
      ],
    );
  }

  Widget _buildStepCircle(int stepNumber) {
    final isActive = stepNumber <= currentStep;
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
            fontSize: circleSize * 0.5,
          ),
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