import 'package:flutter/material.dart';
import 'package:pr_points_calculator/PointsCalculator.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int points = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Points Calculator'),
        centerTitle: false,
        actions: <Widget>[
          // Text(
          //   'Total points: ' +
          //   points.toString(),
          //   style: TextStyle(color: Colors.black),
          // )
          Icon(Icons.shopping_cart)
        ],
      ),
      body: PointsCalculator(),
    );
  }
}
