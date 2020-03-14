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
    void _changePoints(int value) => setState(() => points = value);

    return Scaffold(
      appBar: AppBar(
        title: Text('Points Calculator'),
        centerTitle: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
            child: Text(
              'Total points : ' + points.toString(),
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
      body: PointsCalculator(updatePoints: _changePoints),
    );
  }
}
