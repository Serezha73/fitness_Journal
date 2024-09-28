import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Вы успешно зарегистрировались!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
