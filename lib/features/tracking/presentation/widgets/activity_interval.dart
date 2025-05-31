import 'package:ayinza_commons/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';

class ActivityIntervalTracker extends StatelessWidget {
  final int currentStep;
  final double circleSize;
  final double lineHeight;
  final Color activeColor;
  final Color inactiveColor;

  const ActivityIntervalTracker({
    super.key,
    required this.currentStep,
    this.circleSize = 30.0,
    this.lineHeight = 20.0,
    this.activeColor = Colors.green,
    this.inactiveColor = Colors.grey,
  });

  final List<Map<String, String>> steps = const [
    {
      'title': 'Request Accepted',
      'time': '08:30 AM',
      'date': '2025-05-26',
    },
    {
      'title': 'Parcel Picked',
      'time': '10:00 AM',
      'date': '2025-05-27',
    },
    {
      'title': 'Delivered',
      'time': '05:45 PM',
      'date': '2025-05-28',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:pagePadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Circles and connectors
          Column(
            children: List.generate(steps.length * 2 - 1, (index) {
              if (index.isEven) {
                int stepIndex = index ~/ 2;
                return _buildStepCircle(stepIndex + 1);
              } else {
                return _buildConnectorLine((index ~/ 2) + 1);
              }
            }),
          ),
          const SizedBox(width: 12),
          // Step details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: steps.map((step) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      step['title']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          step['time']!,
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          step['date']!,
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildStepCircle(int stepNumber) {
    final isActive = stepNumber <= currentStep;
    return Container(
      width: circleSize,
      height: circleSize,
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? activeColor : inactiveColor,
      ),
      child: Center(
        child: Icon(Icons.check, color: Colors.white, size: circleSize * 0.5),
      ),
    );
  }

  Widget _buildConnectorLine(int stepNumber) {
    final isActive = stepNumber < currentStep;
    return Container(
      width: 2,
      height: lineHeight,
      color: isActive ? activeColor : inactiveColor,
    );
  }
}
