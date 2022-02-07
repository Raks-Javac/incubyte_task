import 'package:flutter/material.dart';
import 'package:incubyte_string_calc/dependencies_inc.dart';
import 'package:incubyte_string_calc/ui/mobile/string_calc_view.dart';
import 'package:provider/provider.dart';

class StringCalcMobile extends StatelessWidget {
  const StringCalcMobile({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //all procider variable adds all provider used to manage state to the multiProvider of type List<Singleton>
      providers: allProviders,
      child: MaterialApp(
        title: 'String Calc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const StringCalcHome(),
      ),
    );
  }
}
