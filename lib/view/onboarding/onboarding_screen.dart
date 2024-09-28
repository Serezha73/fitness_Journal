import 'package:fitness_journal/features/onboarding_page_widget.dart';
import 'package:fitness_journal/features/theme/colors_extemsion.dart';
import 'package:fitness_journal/view/auth/auth_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreenWidget extends StatefulWidget {
  const OnboardingScreenWidget({super.key});

  @override
  State<OnboardingScreenWidget> createState() => _WelcomeScreenWidgetState();
}

class _WelcomeScreenWidgetState extends State<OnboardingScreenWidget> {
  int selectScreen = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      selectScreen = controller.page?.round() ?? 0;
      setState(() {});
    });
  }

  List pageScreen = [
    {
      'title': 'Следите за своей целью',
      'subtitle':
          'Не волнуйтесь, если вам сложно определить свои цели. Мы можем помочь вам определить ваши цели и отслеживать их достижение',
      'image': 'assets/img/girl_fitness.png'
    },
    {
      'title': 'Выносливость',
      'subtitle':
          'Давайте продолжать стремиться к своим целям, это больно лишь временно, если вы сдадитесь сейчас, вам будет больно всегда',
      'image': 'assets/img/man_running.png'
    },
    {
      'title': 'Здоровое питание',
      'subtitle':
          'Давайте начнём вести здоровый образ жизни вместе с нами, мы можем составлять для вас рацион на каждый день. Здоровое питание — это весело',
      'image': 'assets/img/food_man.png'
    },
    {
      'title': 'Улучшите качество сна',
      'subtitle':
          'Улучшите качество своего сна с нами, ведь хороший сон может подарить вам хорошее настроение утром',
      'image': 'assets/img/girl_yoga.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenColor.blackColor,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
              controller: controller,
              itemCount: pageScreen.length,
              itemBuilder: (context, index) {
                var screens_onboarding = pageScreen[index] as Map? ?? {};
                return OnboardingPageWidget(
                    screens_onboarding: screens_onboarding);
              }),
          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 65,
                  height: 65,
                  child: CircularProgressIndicator(
                    color: ScreenColor.primaryColorOne,
                    value: (selectScreen + 1) / 4,
                    strokeWidth: 3,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                      color: ScreenColor.primaryColorOne,
                      borderRadius: BorderRadius.circular(36)),
                  child: IconButton(
                    onPressed: () {
                      if (selectScreen < 3) {
                        selectScreen = selectScreen + 1;
                        controller.animateToPage(selectScreen,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOutCubic);

                        setState(() {});
                      } else {
                        print('Открыть главный экран');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AuthScreenWidget()));
                      }
                    },
                    icon: Icon(
                      Icons.navigate_next,
                      color: ScreenColor.whiteColor,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
