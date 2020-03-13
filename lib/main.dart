import 'package:flutter/material.dart';
import 'package:pr_points_calculator/custom_theme.dart';
import 'package:smart_select/smart_select.dart';
import './data/options.dart' as options;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: CustomTheme(context),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Points Calculator'),
          ),
          body: FeaturesSingleSheet()),
    );
  }
}

class FeaturesSingleSheet extends StatefulWidget {
  @override
  _FeaturesSingleSheetState createState() => _FeaturesSingleSheetState();
}

class _FeaturesSingleSheetState extends State<FeaturesSingleSheet> {
  String subclass;
  String age;
  String language;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SmartSelect<String>.single(
          title: 'Visa subclass',
          value: subclass,
          options: options.visaSubclass,
          isTwoLine: true,
          onChange: (val) => setState(() => subclass = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        Divider(indent: 20),
        SmartSelect<String>.single(
          title: 'Age',
          value: age,
          options: options.age,
          isTwoLine: true,
          onChange: (val) => setState(() => age = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        Divider(indent: 20),
        SmartSelect<String>.single(
          title: 'English Language',
          value: language,
          options: options.language,
          isTwoLine: true,
          onChange: (val) => setState(() => language = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
      ],
    );
  }
}
