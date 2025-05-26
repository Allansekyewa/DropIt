import 'package:DropIT/features/auth/presentation/widgets/create_customer_widget.dart';
import 'package:ayinza_page_scaffold/page_scaffold.dart';
import 'package:flutter/material.dart';

class RegisterCustomer extends StatelessWidget {
  const RegisterCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(bodyContent: CreateCustomerWidget(),pageTitle: "Register Customer",);
  }
}