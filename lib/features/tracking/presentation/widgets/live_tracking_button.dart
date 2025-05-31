import 'package:DropIT/features/tracking/presentation/pages/live_tracking.dart';
import 'package:ayinza_commons/navigation/nav.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class LiveTrackingButton extends StatelessWidget {
  const LiveTrackingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       AppNavigation.nextPage(context, LiveTracking());
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.orangeColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Center(
          child: Text(
            'Live Tracking',
            style: context.theme.appTextTheme.semibold,
            
          ),
        ),
      ),
    );
  }
}
