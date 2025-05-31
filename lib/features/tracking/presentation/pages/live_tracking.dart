
import 'package:DropIT/features/tracking/presentation/widgets/brief_delivery_tracker.dart';
import 'package:DropIT/features/tracking/presentation/widgets/mapping_widget.dart';
import 'package:ayinza_page_scaffold/page_scaffold.dart';
import 'package:flutter/material.dart';

class LiveTracking extends StatelessWidget {
  const LiveTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      pageTitle: "Live Tracking",
      bodyContent: Stack(
        children: [
          Positioned.fill(
            child: MappingWidget(),
          ),
          
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
              alignment: Alignment.topCenter,
        
              child: BriefDeliveryTracker(currentStep: 2,),
            ),
          ),
        ],
      ),
    );
  }
}

