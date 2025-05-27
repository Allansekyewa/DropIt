import 'package:DropIT/features/customer/presentation/widgets/delivery_form.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class SendersWidget extends StatelessWidget {
  const SendersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Senders Details",
              style: context.theme.appTextTheme.semibold,
            ),
            const SizedBox(height: 4),
            Text(
              "Please enter your details",
              style: context.theme.appTextTheme.regular,
            ),
            const SizedBox(height: 16),
          SendersNameField(),
            const SizedBox(height: 12),
             SendersPhoneNameField(),
            const SizedBox(height: 20),
            Text(
              "Pick Up Details",
              style: context.theme.appTextTheme.semibold,
            ),
            const SizedBox(height: 12),
            SendersAreaNameField(),
            const SizedBox(height: 12),
            SenderFlatNoNameField(),
            const SizedBox(height: 12),
            SendersPinField(),
          ],
        ),
      ),
    );
  }
}


