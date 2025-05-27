import 'package:DropIT/features/customer/presentation/widgets/delivery_form.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class RecieversWidget extends StatelessWidget {
  const RecieversWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Reciever Details",
              style: context.theme.appTextTheme.semibold,
            ),
            const SizedBox(height: 4),
            Text(
              "Please enter recievers details",
              style: context.theme.appTextTheme.regular,
            ),
            const SizedBox(height: 16),
            RecieversNameField(),
            const SizedBox(height: 12),
            RecieversPhoneNameField(),
            const SizedBox(height: 20),
            Text(
              "Drop off Details",
              style: context.theme.appTextTheme.semibold,
            ),
            const SizedBox(height: 12),
            RecieversAreaNameField(),
            const SizedBox(height: 12),
            RecieverFlatNoNameField(),
            const SizedBox(height: 12),
            
          ],
        ),
      ),
    );
  }}