import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';
import './data/options.dart' as options;

class PointsCalculator extends StatefulWidget {
  const PointsCalculator({Key key, this.updatePoints}) : super(key: key);

  @override
  _PointsCalculatorState createState() => _PointsCalculatorState();

  final void Function(int) updatePoints;
}

class _PointsCalculatorState extends State<PointsCalculator> {
  String subclass;
  String age = '0';
  String language = '0';
  String overseasSkillEmployment = '0';
  String australianSkillEmployment = '0';
  String educationalQualification = '0';
  String studyInAustralia = '0';
  String specialistEducationQualification = '0';
  String ccl = '0';
  String studyRegional = '0';
  String partnerSkills = '0';

  int points = 0;

  _PointsCalculatorState();

  void calculatePoints() {
    print('calculating points');
    print('before calculating' + this.points.toString());
    print(age);
    setState(() {
      points = int.parse(this.age) +
          int.parse(this.language) +
          int.parse(this.overseasSkillEmployment) +
          int.parse(this.australianSkillEmployment) +
          int.parse(this.educationalQualification) +
          int.parse(this.studyInAustralia) +
          int.parse(this.specialistEducationQualification) +
          int.parse(this.ccl) +
          int.parse(this.studyRegional) +
          int.parse(this.partnerSkills);
    });
    print('after calculating' + this.points.toString());
    widget.updatePoints(points);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SmartSelect<String>.single(
          title: 'Visa subclass',
          placeholder: 'Select the visa you are applying for',
          value: subclass,
          options: options.visaSubclass,
          isTwoLine: true,
          onChange: (val) {
            setState(() => subclass = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(''),
        ),
        SmartSelect<String>.single(
          title: 'Age',
          placeholder: 'Select one',
          value: age,
          options: options.age,
          isTwoLine: true,
          onChange: (val) {
            setState(() => age = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(age),
        ),
        SmartSelect<String>.single(
          title: 'English Language',
          placeholder: 'Select one',
          value: language,
          options: options.language,
          isTwoLine: true,
          onChange: (val) {
            setState(() => language = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(language),
        ),
        ListTile(
            title: Text(
          'Skilled employment experience',
          style: TextStyle(fontWeight: FontWeight.w700),
        )),
        SmartSelect<String>.single(
          title: 'Overseas skilled employment',
          placeholder: 'Select one',
          value: overseasSkillEmployment,
          options: options.overseasSkillEmployment,
          isTwoLine: true,
          onChange: (val) {
            setState(() => overseasSkillEmployment = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(overseasSkillEmployment),
        ),
        SmartSelect<String>.single(
          title: 'Australian skilled employment',
          placeholder: 'Select one',
          value: australianSkillEmployment,
          options: options.australianSkillEmployment,
          isTwoLine: true,
          onChange: (val) {
            setState(() => australianSkillEmployment = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(australianSkillEmployment),
        ),
        ListTile(
            title: Text(
          'Australian study requirement',
          style: TextStyle(fontWeight: FontWeight.w700),
        )),
        SmartSelect<String>.single(
          title: 'Meet Australian study requirement?',
          placeholder: 'Select one',
          value: studyInAustralia,
          options: options.studyInAustralia,
          isTwoLine: true,
          onChange: (val) {
            setState(() => studyInAustralia = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(studyInAustralia),
        ),
        SmartSelect<String>.single(
          title: 'Educational qualifications',
          placeholder: 'Select one',
          value: educationalQualification,
          options: options.educationalQualification,
          isTwoLine: true,
          onChange: (val) {
            setState(() => educationalQualification = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(educationalQualification),
        ),
        SmartSelect<String>.single(
          title: 'Specialist education qualification ?',
          placeholder: 'Select one',
          value: specialistEducationQualification,
          options: options.specialistEducationQualification,
          isTwoLine: true,
          onChange: (val) {
            setState(() => specialistEducationQualification = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(specialistEducationQualification),
        ),
        ListTile(
            title: Text(
          'Others',
          style: TextStyle(fontWeight: FontWeight.w700),
        )),
        SmartSelect<String>.single(
          title: 'Have you done NAATI ?',
          placeholder: 'Select one',
          value: ccl,
          options: options.ccl,
          isTwoLine: true,
          onChange: (val) {
            setState(() => ccl = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(ccl),
        ),
        SmartSelect<String>.single(
          title: 'Study in regional Australia ?',
          placeholder: 'Select one',
          value: studyRegional,
          options: options.studyRegional,
          isTwoLine: true,
          onChange: (val) {
            setState(() => studyRegional = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(studyRegional),
        ),
        SmartSelect<String>.single(
          title: 'Partner Skill ?',
          placeholder: 'Select one',
          value: partnerSkills,
          options: options.partnerSkills,
          isTwoLine: true,
          onChange: (val) {
            setState(() => partnerSkills = val);
            calculatePoints();
          },
          modalType: SmartSelectModalType.bottomSheet,
          trailing: Text(partnerSkills),
        ),
      ],
    );
  }
}
