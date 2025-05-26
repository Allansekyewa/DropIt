
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class ItemDeliveryCard extends StatelessWidget {
  final String orderId;
  final String customerName;
  final String address;
  final String status;
  final Color statusColor;
  final String estimatedTime;
  final String distance;

  const ItemDeliveryCard({super.key, 
    required this.orderId,
    required this.customerName,
    required this.address,
    required this.status,
    required this.statusColor,
    required this.estimatedTime,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.06),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    orderId,
                    style:context.theme.appTextTheme.semibold
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      status,
                      style:context.theme.appTextTheme.regular.copyWith(color: statusColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                customerName,
                style: context.theme.appTextTheme.regular.copyWith(fontSize: 14),
              ),
              const SizedBox(height: 4),
              Text(
                address,
                style: context.theme.appTextTheme.light.copyWith(fontSize: 12),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 16,
                    color:AppColors.greyButtonColor,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    estimatedTime,
                    style: context.theme.appTextTheme.light,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.location_on_outlined,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Text(
                    distance,
                    style: context.theme.appTextTheme.light.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}