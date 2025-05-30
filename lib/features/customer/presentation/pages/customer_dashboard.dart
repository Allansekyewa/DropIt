import 'package:DropIT/features/customer/presentation/pages/create_delivery.dart';
import 'package:DropIT/features/customer/presentation/widgets/item_delivery_card.dart';
import 'package:DropIT/features/customer/presentation/widgets/quick_buttons.dart';
import 'package:DropIT/features/customer/presentation/widgets/status_card.dart';
import 'package:DropIT/features/customer/presentation/widgets/welcome.dart';
import 'package:DropIT/features/tracking/presentation/pages/tracking_page.dart';
import 'package:ayinza_commons/navigation/nav.dart';
import 'package:ayinza_commons/utils/navigable_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:themes/apptheme/color/app_colors.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class CustomerHomePage extends NavigablePage {
  const CustomerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: Column(
          children: [
            WelcomeWidget(),

            // Main Content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // Quick Actions
                    Row(
                      children: [
                        Expanded(
                          child: QuickActionButton(
                            icon: CupertinoIcons.add_circled,
                            label: 'Create\nDelivery',
                            color: AppColors.black,
                            onTap: () {
                              AppNavigation.nextPage(context, CreateDelivery());
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: QuickActionButton(
                            icon: Icons.search,
                            label: 'Track\nPackage',
                            color: const Color(0xFF764BA2),
                            onTap: () {
                              AppNavigation.nextPage(context, TrackingPage());
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 32),

                    // Stats Cards
                    Row(
                      children: [
                        Expanded(
                          child: StatsCard(
                            title: 'Active',
                            count: '3',
                            icon: Icons.local_shipping,
                            color: const Color(0xFF10B981),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: StatsCard(
                            title: 'Delivered',
                            count: '28',
                            icon: Icons.check_circle,
                            color: const Color(0xFF3B82F6),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: StatsCard(
                            title: 'Pending',
                            count: '5',
                            icon: Icons.access_time,
                            color: const Color(0xFFF59E0B),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 32),

                    // Active Deliveries Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Deliveries',
                          style: context.theme.appTextTheme.semibold,
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Delivery List
                    Expanded(
                      child: ListView(
                        children: [
                          ItemDeliveryCard(
                            orderId: '#DEL-12345',
                            customerName: 'Sarah Johnson',
                            address: '123 Main St, Downtown',
                            status: 'In Transit',
                            statusColor: const Color(0xFF10B981),
                            estimatedTime: 'Today, 2:30 PM',
                            distance: '2.5 km away',
                          ),
                          const SizedBox(height: 12),
                          ItemDeliveryCard(
                            orderId: '#DEL-67890',
                            customerName: 'Mike Chen',
                            address: '456 Oak Ave, Uptown',
                            status: 'Pending',
                            statusColor: const Color(0xFFF59E0B),
                            estimatedTime: 'Tomorrow, 10:00 AM',
                            distance: '5.1 km away',
                          ),
                          const SizedBox(height: 12),
                          ItemDeliveryCard(
                            orderId: '#DEL-11111',
                            customerName: 'Emma Davis',
                            address: '789 Pine Rd, Suburb',
                            status: 'Delivered',
                            statusColor: const Color(0xFF6B7280),
                            estimatedTime: 'Yesterday, 4:15 PM',
                            distance: 'Completed',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


