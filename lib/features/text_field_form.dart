import 'package:fitness_journal/features/theme/colors_extemsion.dart';

import 'package:flutter/material.dart';

class TextFieldFormWidget extends StatefulWidget {
  final TextEditingController? controller;

  final TextInputType? keyboardType;
  final String hintText;

  final String icon;
  final EdgeInsets? margin;
  final bool obscureText;
  final Widget? rightIcon;
  const TextFieldFormWidget(
      {super.key,
      required this.hintText,
      required this.icon,
      this.margin,
      this.controller,
      this.rightIcon,
      this.obscureText = false,
      this.keyboardType});

  @override
  State<TextFieldFormWidget> createState() => _TextFieldFormWidgetState();
}

class _TextFieldFormWidgetState extends State<TextFieldFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      decoration: BoxDecoration(
          color: ScreenColor.fieldColor,
          borderRadius: BorderRadius.circular(16)),
      child: TextField(
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        style: TextStyle(color: ScreenColor.fieldTextColor, fontSize: 16),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: widget.hintText,
          suffixIcon: widget.rightIcon,
          prefixIcon: Container(
            alignment: Alignment.center,
            width: 20,
            height: 20,
            child: Image.asset(
              widget.icon,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              color: ScreenColor.fieldIconColor,
            ),
          ),
          hintStyle: TextStyle(color: ScreenColor.fieldTextColor, fontSize: 12),
        ),
      ),
    );
  }
}
