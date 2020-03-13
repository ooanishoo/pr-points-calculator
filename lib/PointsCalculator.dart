import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';
import './data/options.dart' as options;


class PointsCalculator extends StatefulWidget {
  @override
  _PointsCalculatorState createState() => _PointsCalculatorState();
}

class _PointsCalculatorState extends State<PointsCalculator> {
  String subclass;
  String age;
  String language;
  String overseasSkillEmployment;
  String australianSkillEmployment;
  String educationalQualification;
  String studyInAustralia;
  String specialistEducationQualification;
  String ccl;
  String studyRegional;
  String partnerSkills;

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
        SmartSelect<String>.single(
          title: 'Age',
          value: age,
          options: options.age,
          isTwoLine: true,
          onChange: (val) => setState(() => age = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        SmartSelect<String>.single(
          title: 'English Language',
          value: language,
          options: options.language,
          isTwoLine: true,
          onChange: (val) => setState(() => language = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        ListTile(
            title: Text(
          'Skilled employment experience',
          style: TextStyle(fontWeight: FontWeight.w700),
        )),
        SmartSelect<String>.single(
          title: 'Overseas skilled employment',
          value: overseasSkillEmployment,
          options: options.overseasSkillEmployment,
          isTwoLine: true,
          onChange: (val) => setState(() => overseasSkillEmployment = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        SmartSelect<String>.single(
          title: 'Australian skilled employment',
          value: australianSkillEmployment,
          options: options.australianSkillEmployment,
          isTwoLine: true,
          onChange: (val) => setState(() => australianSkillEmployment = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        SmartSelect<String>.single(
          title: 'Educational qualifications',
          value: educationalQualification,
          options: options.educationalQualification,
          isTwoLine: true,
          onChange: (val) => setState(() => educationalQualification = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        ListTile(
            title: Text(
          'Australian study requirement',
          style: TextStyle(fontWeight: FontWeight.w700),
        )),
        SmartSelect<String>.single(
          title: 'Degree, diploma or trade qualification in Australia ?',
          value: studyInAustralia,
          options: options.studyInAustralia,
          isTwoLine: true,
          onChange: (val) => setState(() => studyInAustralia = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        SmartSelect<String>.single(
          title: 'Specialist education qualification ?',
          value: specialistEducationQualification,
          options: options.specialistEducationQualification,
          isTwoLine: true,
          onChange: (val) =>
              setState(() => specialistEducationQualification = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        SmartSelect<String>.single(
          title: 'Have you done NAATI ?',
          value: ccl,
          options: options.ccl,
          isTwoLine: true,
          onChange: (val) => setState(() => ccl = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        SmartSelect<String>.single(
          title: 'Study in regional Australia ?',
          value: studyRegional,
          options: options.studyRegional,
          isTwoLine: true,
          onChange: (val) => setState(() => studyRegional = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
        SmartSelect<String>.single(
          title: 'Partner Skill ?',
          value: partnerSkills,
          options: options.partnerSkills,
          isTwoLine: true,
          onChange: (val) => setState(() => partnerSkills = val),
          modalType: SmartSelectModalType.bottomSheet,
        ),
      ],
    );
  }
}
