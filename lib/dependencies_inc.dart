import 'package:get_it/get_it.dart';
import 'package:incubyte_string_calc/core/view_models/calc_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final getIt = GetIt.instance;

setupLocator() async {
//the string provider model is being registered
  getIt.registerFactory(() => StringProvider());
}

final allProviders = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => StringProvider()),
];
