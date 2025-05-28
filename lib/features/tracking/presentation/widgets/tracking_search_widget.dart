import 'package:ayinza_commons/utils/constants.dart';
import 'package:flutter/material.dart';

class TrackingSearchWidget extends StatelessWidget {
  const TrackingSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pagePadding,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: Colors.grey),
            const SizedBox(width: 8),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Tracking number ',
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.qr_code_scanner, color: Colors.grey),
              onPressed: () {
                // Add your scan action here
              },
            ),
          ],
        ),
      ),
    );
  }
}
