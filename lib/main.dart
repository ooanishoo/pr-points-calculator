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
      home: HomePage()
    );
  }
}
