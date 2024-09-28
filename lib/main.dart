import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_journal/features/theme/colors_extemsion.dart';
import 'package:fitness_journal/firebase_options.dart';
import 'package:fitness_journal/view/onboarding/welcome_screen.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FitnessJournal());
}

class FitnessJournal extends StatefulWidget {
  const FitnessJournal({super.key});

  @override
  State<FitnessJournal> createState() => _FitnessJournalState();
}

class _FitnessJournalState extends State<FitnessJournal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitnessJournal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ScreenColor.primaryColorOne,
      ),
      home: const WelcomeScreenWidget(),
    );
  }
}
