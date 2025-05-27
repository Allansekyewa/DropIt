import 'package:DropIT/features/customer/presentation/widgets/delivery_form.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Package Details",
              style: context.theme.appTextTheme.semibold,
            ),
            verticalSpaceSmall,
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.black, width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "NOTE: Your given product details will be re-checked by the delivery personnel before pickup for attestation to avoid commotion.Thanks",
                style: context.theme.appTextTheme.regular,
              ),
            ),
            verticalSpaceSmall,
            Row(
              children:  [
                Flexible(flex: 2, child: WeightField()),
                SizedBox(width: 10),
                Flexible(flex: 1, child: QuantityField()),
              ],
            ),
            verticalSpaceSmall,
             CategoryField(),
          ],
        ),
      ),
    );
  }
}
