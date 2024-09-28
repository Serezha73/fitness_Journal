import 'package:fitness_journal/features/theme/colors_extemsion.dart';
import 'package:flutter/material.dart';

class ClickButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const ClickButtonWidget(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
      textColor: ScreenColor.repeatedColorOne,
      minWidth: double.maxFinite,
      color: ScreenColor.primaryColorThree,
      child: Text(
        title,
        style: TextStyle(
            color: ScreenColor.whiteColor,
            fontSize: 22,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
