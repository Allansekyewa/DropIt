import 'package:flutter/material.dart';
import 'package:themes/apptheme/extensions/extensions.dart';

class DropItText extends StatelessWidget {
  const DropItText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Text(
        "DropIT",
        style: context.theme.appTextTheme.bold.copyWith(
          fontSize: 36, 
          color: Colors.black, 
          letterSpacing: 1.5, 
        ),
      ),
    );
  }
}
