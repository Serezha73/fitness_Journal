import 'package:fitness_journal/features/click_button.dart';
import 'package:fitness_journal/features/text_field_form.dart';
import 'package:fitness_journal/features/theme/colors_extemsion.dart';
// import 'package:fitness_journal/service/firebase_service.dart';
import 'package:flutter/material.dart';

class AuthScreenWidget extends StatefulWidget {
  const AuthScreenWidget({super.key});

  @override
  State<AuthScreenWidget> createState() => _AuthScreenWidgetState();
}

class _AuthScreenWidgetState extends State<AuthScreenWidget> {
  bool _isPasswordVisible = false; // Управляет видимостью пароля
  bool isChek = false; // Управляет состоянием чекбокса

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size; // размер экрана для адаптивности
    return Scaffold(
      backgroundColor: ScreenColor.blackColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Text(
                    'Создать аккаунт',
                    style: TextStyle(
                      color: ScreenColor.whiteColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: media.height * 0.05),
                const TextFieldFormWidget(
                  hintText: 'Ваше Имя',
                  icon: 'assets/icon/profile_icon.png',
                ),
                SizedBox(height: media.height * 0.02),
                TextFieldFormWidget(
                  hintText: 'Ваш email',
                  icon: 'assets/icon/email_icon.png',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: media.height * 0.02),
                TextFieldFormWidget(
                  hintText: 'Введите пароль',
                  icon: 'assets/icon/lock_icon.png',
                  obscureText: !_isPasswordVisible, // Скрытие/показ пароля
                  rightIcon: TextButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible =
                            !_isPasswordVisible; // Переключение видимости пароля
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        _isPasswordVisible
                            ? 'assets/icon/right_hide_icon.png'
                            : 'assets/icon/right_icon.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        color: ScreenColor.fieldIconColor,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isChek = !isChek; // Переключение состояния чекбокса
                        });
                      },
                      icon: Icon(
                        isChek
                            ? Icons
                                .check_box_outlined // Иконка чекбокса, если выбран
                            : Icons
                                .check_box_outline_blank_outlined, // Иконка, если не выбран
                        color: ScreenColor.fieldTextColor,
                      ),
                    ),
                    Expanded(
                        child: Text(
                      'Продолжая, вы принимаете нашу Политику конфиденциальности и условия использования',
                      style: TextStyle(
                          color: ScreenColor.whiteColor, fontSize: 12),
                    ))
                  ],
                ),
                SizedBox(height: media.height * 0.28),
                ClickButtonWidget(
                    title: 'Зарегистрироваться', onPressed: () {}),
                SizedBox(height: media.height * 0.03),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: ScreenColor.fieldIconColor,
                      ),
                    ),
                    Text(
                      '  Или  ',
                      style:
                          TextStyle(color: ScreenColor.greyColor, fontSize: 16),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: ScreenColor.fieldIconColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: media.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {}, // Обработка нажатия на иконку Google
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: ScreenColor.blackColor,
                          border: Border.all(
                            width: 1,
                            color: ScreenColor.fieldIconColor.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/icon/google_icon.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(width: media.width * 0.1),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ScreenColor.blackColor, // Цвет фона иконки
                            border: Border.all(
                              width: 1,
                              color: ScreenColor.fieldIconColor
                                  .withOpacity(0.5), // Прозрачная граница
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(
                            'assets/icon/facebook_icon.png',
                            width: 20,
                            height: 20,
                          ),
                        )),
                  ],
                ),
                SizedBox(height: media.height * 0.01),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'У вас уже есть учетная запись? ',
                          style: TextStyle(
                            color: ScreenColor.whiteColor,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: media.width * 0.01),
                        Text(
                          'Войти',
                          style: TextStyle(
                              color: ScreenColor.GradientColorTwo,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
