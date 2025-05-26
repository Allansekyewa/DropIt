import 'package:DropIT/features/auth/presentation/pages/register_customer.dart';
import 'package:DropIT/features/auth/presentation/pages/register_driver.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    const double buttonWidth = 220;

    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'Customer') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const RegisterCustomer()),
          );
        } else if (value == 'Delivery Personnel') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const RegisterDriver()),
          );
        }
      },
      color: Colors.white,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'Customer',
          child: SizedBox(
            width: buttonWidth,
            child: Text(
              'Customer',
              style: context.theme.appTextTheme.regular,
            ),
          ),
        ),
        PopupMenuItem(
          value: 'Delivery Personnel',
          child: SizedBox(
            width: buttonWidth,
            child:  Text(
              'Delivery Personnel',
            style: context.theme.appTextTheme.regular,
            ),
          ),
        ),
      ],
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.orangeColor, width: 0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        width: buttonWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.orangeColor, width: 0.3),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        child:  Text(
          'Create Account As',
          style: context.theme.appTextTheme.regular,
        ),
      ),
    );
  }
}



