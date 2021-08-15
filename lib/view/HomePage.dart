import 'package:dkadikoy/view/homePage.dart';
import 'package:dkadikoy/view/menu_screen.dart';
import 'package:dkadikoy/view/main_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'main_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      isRtl: true,
      controller: drawerController,
      style: DrawerStyle.Style1,
      menuScreen: MenuScreen(),
      mainScreen: mainScreen( zoomDrawerController: drawerController,),
      borderRadius: 48.8,
      showShadow: true,
      angle: -1.0,
      backgroundColor: Colors.blue[100]!,
      slideWidth: MediaQuery.of(context).size.width * .65,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    );
  }
}
