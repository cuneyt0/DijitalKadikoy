import 'package:dkadikoy/Deneme.dart';
import 'package:dkadikoy/Denemeler/Giris.dart';
import 'package:dkadikoy/view/HomePageContent/HomePage.dart';

import 'package:dkadikoy/view/SplashContent/splash.dart';
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
        home:Giris()//isLoading == false ? Splash() : HomePage()
     );
  }
}
