import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:pr_points_calculator/HomePage.dart';
import 'package:pr_points_calculator/custom_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: CustomTheme(context),
      //home: HomePage()
      home: AnimatedSplash(
        imagePath: 'assets/images/points.png',
        home: HomePage(),
        duration: 2500,
        type: AnimatedSplashType.StaticDuration,
      ),
    );
  }
}
