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
  int selectScreen = 0; // Индекс текущего экрана
  PageController controller = PageController(); // Контроллер для PageView

  @override
  void initState() {
    super.initState();

    // Слушатель изменений в PageView для отслеживания текущего экрана
    controller.addListener(() {
      selectScreen =
          controller.page?.round() ?? 0; // Обновление индекса текущего экрана
      setState(() {});
    });
  }

  // Список экранов для отображения на странице
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
          // Основной контент: PageView с экранами онбординга
          PageView.builder(
              controller: controller, // Контроллер для управления прокруткой
              itemCount: pageScreen.length, // Количество экранов
              itemBuilder: (context, index) {
                var screens_onboarding =
                    pageScreen[index] as Map? ?? {}; // Текущий экран
                return OnboardingPageWidget(
                    screens_onboarding:
                        screens_onboarding); // Виджет страницы онбординга
              }),
          // Прогресс-индикатор и кнопка для перехода между экранами
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
                    value: (selectScreen + 1) / 4, // Прогресс индикатора
                    strokeWidth: 3,
                  ),
                ),
                // Кнопка для перехода между экранами
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                      color: ScreenColor.primaryColorOne, // Цвет кнопки
                      borderRadius: BorderRadius.circular(36)),
                  child: IconButton(
                    onPressed: () {
                      // Если ещё не последний экран, переходим к следующему
                      if (selectScreen < 3) {
                        selectScreen = selectScreen + 1;
                        controller.animateToPage(selectScreen,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves
                                .easeInOutCubic); // Анимация перехода между экранами
                        setState(() {});
                      } else {
                        // Если это последний экран, переходим к экрану авторизации
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
