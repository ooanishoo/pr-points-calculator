import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:pr_points_calculator/PointsCalculator.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int points = 0;

  @override
  Widget build(BuildContext context) {
    void _changePoints(int value) => setState(() => points = value);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Points'),
        //leading: Icon(LineAwesomeIcons.bars),
        // leading: IconButton(
        //   icon: Icon(LineAwesomeIcons.bars),
        //   onPressed: () => _scaffoldKey.currentState.openDrawer(),
        // ),
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
      // drawer: Drawer(
      //   child: ListView(
      //     children: <Widget>[
      //       ListTile(
      //         title: Text(
      //           'Points',
      //           style: TextStyle(fontFamily: 'Monoton', fontSize: 30),
      //         ),
      //       ),
      //       ListTile(
      //         title: Text('Points Calculator'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       Divider(indent: 16.0,),
      //       ListTile(
      //         title: Text('Points Chart'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
