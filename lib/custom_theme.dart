import 'package:flutter/material.dart';
import 'package:material_color_scheme/material_color_scheme.dart';

ThemeData CustomTheme(BuildContext context) {
  return ThemeData(
    primarySwatch: generateSwatch(Color(0xFF20CE88)),
    appBarTheme: AppBarTheme(color: Theme.of(context).scaffoldBackgroundColor, elevation: 0.0)
  );
}
