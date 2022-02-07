import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:incubyte_string_calc/dependencies_inc.dart';
import 'package:incubyte_string_calc/ui/platform_home.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  setupLocator();
  runApp(const StringCalcMobile());
}
