
import 'package:ayinza_page_scaffold/page_scaffold.dart';
import 'package:flutter/material.dart';

class LiveTracking extends StatelessWidget {
  const LiveTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(bodyContent: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       // LiveTrackingMapWidget()
      ],
    ),pageTitle: "LIve Tracking",);
  }
}