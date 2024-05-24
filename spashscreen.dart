import 'package:flutter/material.dart';
import 'package:quiz_app/quizapp.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State createState() => SplashScreenState();
}

class SplashScreenState extends State {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const QuizApp(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/flash.jpg"),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
