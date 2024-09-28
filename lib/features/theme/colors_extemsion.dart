import 'package:flutter/material.dart';

class ScreenColor {
  static Color get primaryColorOne => const Color(0xff6C2FD1);
  static Color get primaryColorTwo => const Color(0xff4023D7);
  static Color get primaryColorThree => const Color(0xff702DD3);

  static Color get repeatedColorOne => const Color(0xffC150F6);
  static Color get repeatedColorTwo => const Color(0xffEEA4CE);

  static Color get GradientColorOne => const Color(0xff702dd3);
  static Color get GradientColorTwo => const Color(0xffBA29B2);

  static List<Color> get GradientColors => [
        GradientColorOne,
        GradientColorTwo,
      ];

  static List<Color> get primaryColor => [primaryColorOne, primaryColorTwo];
  static List<Color> get repeatedColor => [repeatedColorTwo, repeatedColorOne];

  static Color get blackColor => const Color(0xff2A2C38);
  static Color get greyColor => const Color(0xffB6B4C1);
  static Color get whiteColor => const Color(0xffE9E3E4);
  static Color get fieldColor => const Color(0xff161818);
  static Color get fieldTextColor => const Color(0xffACA3A5);
  static Color get fieldIconColor => const Color(0xff7E7476);
}
