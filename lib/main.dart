import 'package:cricket_scorer/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CricketScorerApp());
}

class CricketScorerApp extends StatelessWidget {
  const CricketScorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cricket Scorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: SplashScreen(),
    );
  }
}