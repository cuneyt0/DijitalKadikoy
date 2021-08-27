import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dkadikoy/Ascreen.dart';
import 'package:dkadikoy/CScreen.dart';
import 'package:dkadikoy/view/HomePageContent/HomePage.dart';
import 'package:dkadikoy/view/MenuContent/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConvexAppBarr extends StatefulWidget {
  const ConvexAppBarr({Key? key}) : super(key: key);

  @override
  _ConvexAppBarrState createState() => _ConvexAppBarrState();
}

class _ConvexAppBarrState extends State<ConvexAppBarr> {
  var _selectedpageIndex = 0;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  ConvexAppBar(
      color: Colors.black,
      style: TabStyle.reactCircle,
      backgroundColor: Colors.white,
      activeColor: Colors.blue,
      initialActiveIndex: _selectedpageIndex,
      height: 35,
      onTap: (index) {
        index == 4
            ? _drawerKey.currentState!.openEndDrawer()
            : setState(() {
          _selectedpageIndex = index;
        });
        if (index == 0) {
          setState(() {
            Get.to(HomePage());
          });
        }
        if (index == 1) {
          setState(() {
            Get.to(ScreenA());
          });
        }
        if (index == 2) {
          setState(() {
            Get.to(ScreenC());
          });
        }

      },
      items: [
        TabItem(icon: Icons.home, title: ''),
        TabItem(icon: Icons.mail, title: ''),
        TabItem(icon: Icons.credit_card, title: ''),
        TabItem(icon: Icons.qr_code, title: ''),
        TabItem(icon: Icons.apps_outlined, title: ''),
      ],
    );
  }
}
