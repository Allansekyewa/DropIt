import 'package:flutter/material.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class RecentSerchesWidget extends StatelessWidget {
  const RecentSerchesWidget({super.key});

  final List<Map<String, String>> orders = const [
    {'id': '233662', 'from': 'Kampala', 'to': 'Entebbe'},
    {'id': '987451', 'from': 'Gulu', 'to': 'Lira'},
    {'id': '675849', 'from': 'Mbale', 'to': 'Soroti'},
    {'id': '124578', 'from': 'Mbarara', 'to': 'Kabale'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Orders',
              style: context.theme.appTextTheme.semibold,
            ),
            const SizedBox(height: 12),
            ...orders.map((order) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  children: [
                    Text(
                      'Order ID:',
                      style: context.theme.appTextTheme.semibold,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      order['id']!,
                      style: context.theme.appTextTheme.regular,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'From ${order['from']} to ${order['to']}',
                      style: context.theme.appTextTheme.light.copyWith(fontSize: 12)
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
