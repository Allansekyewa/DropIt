
import 'package:DropIT/features/tracking/presentation/widgets/activity_interval.dart';
import 'package:DropIT/features/tracking/presentation/widgets/live_tracking_button.dart';
import 'package:DropIT/features/tracking/presentation/widgets/package_name.dart';
import 'package:DropIT/features/tracking/presentation/widgets/recent_serches_widget.dart';
import 'package:DropIT/features/tracking/presentation/widgets/tracking_search_widget.dart';
import 'package:ayinza_commons/utils/constants.dart';

import 'package:ayinza_page_scaffold/page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(bodyContent: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TrackingSearchWidget(),
        PackageStatus(),
        verticalSpaceSmall,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Activity",style: context.theme.appTextTheme.semibold,),
        ),
        ActivityIntervalTracker(currentStep: 2),
       
        RecentSerchesWidget()
       
   
      ],
      
    ),pageTitle: "Track Package",
    footerContent: SafeArea(
        child: Padding(
          padding: pagePadding,
          child: IntrinsicHeight(child: Center(child:LiveTrackingButton())),
        ),
      ),
    );
  }
}