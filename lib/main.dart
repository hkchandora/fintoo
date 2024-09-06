import 'package:fintoo/config/initial_bindings.dart';
import 'package:fintoo/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'config/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      title: Strings.fintoo,
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      initialBinding: InitialBinding(),
      initialRoute: home,
      getPages: routes,
    );
  }
}
