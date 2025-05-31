import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';

class PackageStatus extends StatelessWidget {
  const PackageStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.watch_outlined, color: Colors.black),
          const SizedBox(width: 8),
          const Text(
            'Phillip Patek 87frt',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Row(
            children:  [
              Icon(CupertinoIcons.car_detailed, color: AppColors.orangeColor),
              SizedBox(width: 8),
              Text(
                'In Transit',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.orangeColor
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

