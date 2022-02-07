import 'package:flutter/material.dart';
import 'package:incubyte_string_calc/ui/mobile/string_calc_view.dart';

class StringCalcMobile extends StatelessWidget {
  const StringCalcMobile({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'String Calc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StringCalcHome(),
    );
  }
}
