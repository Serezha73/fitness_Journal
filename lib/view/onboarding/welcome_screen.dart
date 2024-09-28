import 'package:fitness_journal/features/click_button.dart';
import 'package:fitness_journal/features/theme/colors_extemsion.dart';
import 'package:fitness_journal/view/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreenWidget extends StatefulWidget {
  const WelcomeScreenWidget({super.key});

  @override
  State<WelcomeScreenWidget> createState() => _WelcomeScreenWidgetState();
}

class _WelcomeScreenWidgetState extends State<WelcomeScreenWidget> {
  bool itChangeColor = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ScreenColor.blackColor,
      body: Container(
        width: media.width,
        height: media.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text('FITNESS',
                style: TextStyle(
                    color: ScreenColor.whiteColor,
                    fontSize: 48,
                    fontWeight: FontWeight.w700)),
            Text('JOURNAL',
                style: TextStyle(
                    color: ScreenColor.primaryColorOne,
                    fontSize: 28,
                    fontWeight: FontWeight.w700)),
            const Spacer(),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: ClickButtonWidget(
                  title: 'Начать',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const OnboardingScreenWidget()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
