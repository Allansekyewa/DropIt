

import 'package:DropIT/features/auth/presentation/widgets/craete_account.dart';

import 'package:DropIT/res/animations/presentation/widgets/animation.dart';

import 'package:ayinza_auth/auth/presentation/bloc/auth_bloc.dart';
import 'package:ayinza_auth/auth/presentation/widgets/auth_submit_button.dart';
import 'package:ayinza_auth/auth/presentation/widgets/data_protection_notice.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:ayinza_commons/utils/navigable_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes/apptheme/color/app_colors.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class HomePage extends NavigablePage {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpaceLarge,
                verticalSpaceLarge,
                
          SplashAnimationWidget(),
                
                const SizedBox(height: 32),
                Text(
                  "DropIT • Reliable • Fast • Secure",
                  textAlign: TextAlign.center,
                  style: context.theme.appTextTheme.bold.copyWith(
                    letterSpacing: 0.5,
                   fontSize: 13
                   
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Seamless deliveries, trusted by businesses and individuals",
                  textAlign: TextAlign.center,
                  style: context.theme.appTextTheme.regular,
                ),
                const SizedBox(height: 38),
                Text(
                  "New here?",
                  style: context.theme.appTextTheme.regular.copyWith(
                    color: AppColors.blueColor,
                  ),
                ),
                const SizedBox(height: 8),
                CreateAccountButton(),
                const Text("or"),
                const SizedBox(height: 48),
                AuthSubmitButton(authBloc),
                const SizedBox(height: 24),
                const DataProtectionNotice(),
                verticalSpaceSmall,
                  Text(
                "© 2025 Ayinza Technologies. All rights reserved.",
                style: context.theme.appTextTheme.light.copyWith(
                  fontSize: 10,
                  color: AppColors.black
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}