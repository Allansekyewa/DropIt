import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


// class MappingWidget extends StatefulWidget {
//   const MappingWidget({super.key});

//   @override
//   State<MappingWidget> createState() => _MappingWidgetState();
// }

// class _MappingWidgetState extends State<MappingWidget> {
//   static const LatLng _kInitialPosition = LatLng(0.3136, 32.5811);
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: GoogleMap(initialCameraPosition: CameraPosition(target:_kInitialPosition ,zoom: 12)),
//     );
//   }
// }
class MappingWidget extends StatelessWidget {
  const MappingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image from assets
          Positioned.fill(
            child: Image.asset(
              'assets/images/map.jpg',
              fit: BoxFit.cover,
            ),
          ),

        ],
      ),
    );
  }
}
