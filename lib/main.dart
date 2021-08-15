import 'package:dkadikoy/view/HomePage.dart';
import 'package:dkadikoy/view/deneme.dart';

import 'package:dkadikoy/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  WidgetsBinding.instance;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final isLoading = true;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: isLoading == false ? Splash() : HomePage()
     );
  }
}
