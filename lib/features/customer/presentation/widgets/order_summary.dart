import 'package:DropIT/features/customer/presentation/widgets/delivery_form.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Double-check your drop off destination",
              style: context.theme.appTextTheme.semibold,
            ),
            verticalSpaceSmall,
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.black, width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(CupertinoIcons.map),
                  horizontalSpaceSmall,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Kololo lower drive gate 24",
                          style: context.theme.appTextTheme.regular),
                      verticalSpaceSmall,
                      Text("Recipient Number: 078987654",
                          style: context.theme.appTextTheme.regular),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpaceSmall,
            _buildSectionLabel(context, Icons.inventory_2, "Package"),
            verticalSpaceSmall,
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.black, width: 0.5),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    _buildPackageRow("Category", "Electronics", context),
                    verticalSpaceSmall,
                    _buildPackageRow("Weight", "Medium", context),
                    verticalSpaceSmall,
                    _buildPackageRow("Quantity", "11", context),
                  ],
                ),
              ),
            ),
            verticalSpaceSmall,
            _buildSectionLabel(context, Icons.delivery_dining, "Choose Delivery Means"),
            verticalSpaceSmall,
            DeliveryTypeField(),
            verticalSpaceSmall,
            _buildSectionLabel(context, Icons.attach_money, "Amount"),
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.black, width: 0.5),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    _buildPackageRow("Courier fees", "5000ugx", context),
                    verticalSpaceSmall,
                    _buildPackageRow("Delivery fees", "2000ugx", context),
                    verticalSpaceSmall,
                    _buildPackageRow("Total", "7000ugx", context),
                  ],
                ),
              ),
            ),
            verticalSpaceSmall,
            _buildSectionLabel(context, Icons.payment, "Make Payment"),
            verticalSpaceSmall,
            SendersPhoneNameField()
          ],
        ),
      ),
    );
  }

  Widget _buildPackageRow(String label, String value, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: context.theme.appTextTheme.regular),
        Text(value, style: context.theme.appTextTheme.regular),
      ],
    );
  }

  Widget _buildSectionLabel(BuildContext context, IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 18,color: AppColors.lightGrey,),
       SizedBox(width: 3,),
        Text(label, style: context.theme.appTextTheme.semibold),
      ],
    );
  }
}

