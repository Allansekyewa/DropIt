import 'package:DropIT/core/constants/global_variables.dart';
import 'package:DropIT/features/auth/presentation/widgets/create_acc_form.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:themes/apptheme/color/app_colors.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class CreateCustomerWidget extends StatelessWidget {
  const CreateCustomerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.lightGrey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: AppColors.blueColor.withOpacity(0.3)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.info_outline,
                          color: AppColors.blueColor,
                          size: 24,
                        ),
                        horizontalSpaceSmall,
                        Text(
                          "IMPORTANT",
                          style: context.theme.appTextTheme.semibold.copyWith(
                            color: AppColors.blueColor,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    Text(
                        "Please ensure you enter a correct email address. After registering, you will need to check your email where you will be prompted to create a password.",
                        style: context.theme.appTextTheme.light),
                  ],
                ),
              ),
            ),
            FirstNameField(),
            verticalSpaceSmall,
            LastNameField(),
            verticalSpaceSmall,
            PhoneNumberField(),
            verticalSpaceSmall,
            EmailField(),
            verticalSpaceLarge,
            verticalSpaceLarge,
            verticalSpaceLarge,
            verticalSpaceLarge,
            SubmitUserFormButton(authenticationBloc)
          ],
        ),
      ),
    );
  }
}
