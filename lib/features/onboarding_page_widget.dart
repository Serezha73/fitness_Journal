import 'package:fitness_journal/features/theme/colors_extemsion.dart';
import 'package:flutter/material.dart';

class OnboardingPageWidget extends StatelessWidget {
  final Map screens_onboarding;
  const OnboardingPageWidget({super.key, required this.screens_onboarding});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      width: media.width,
      height: media.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            screens_onboarding['image'].toString(),
            width: media.width,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: media.width * 0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              screens_onboarding['title'].toString(),
              style: TextStyle(
                  color: ScreenColor.whiteColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              screens_onboarding['subtitle'].toString(),
              style: TextStyle(
                  color: ScreenColor.greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
