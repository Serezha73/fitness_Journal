import 'package:fitness_journal/features/theme/colors_extemsion.dart';
import 'package:flutter/material.dart';

class OnboardingPageWidget extends StatelessWidget {
  final Map screens_onboarding; // Данные для текущего экрана онбординга

  const OnboardingPageWidget({super.key, required this.screens_onboarding});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size; // Получение размеров экрана

    return SizedBox(
      width: media.width, // Ширина виджета равна ширине экрана
      height: media.height, // Высота виджета равна высоте экрана
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Изображение для текущего экрана
          Image.asset(
            screens_onboarding['image'].toString(), // Путь к изображению
            width: media.width,
            fit: BoxFit.fitWidth, // Масштабирование изображения
          ),
          SizedBox(height: media.width * 0.1),

          // Заголовок текущего экрана
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              screens_onboarding['title'].toString(), // Заголовок из данных
              style: TextStyle(
                  color: ScreenColor.whiteColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),

          // Подзаголовок текущего экрана
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              screens_onboarding['subtitle']
                  .toString(), // Подзаголовок из данных
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
