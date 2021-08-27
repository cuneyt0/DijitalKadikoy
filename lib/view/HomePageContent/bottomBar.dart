import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../Ascreen.dart';
import '../../CScreen.dart';


class BottomBar extends StatefulWidget {



  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  var _selectedpageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      color: Colors.black,
      style: TabStyle.reactCircle,
      backgroundColor: Colors.white,
      activeColor: Colors.blue,
      initialActiveIndex: _selectedpageIndex,

      height: 35,
      onTap: (index) {

       /*
        index == 4
            ? _drawerKey.currentState!.openEndDrawer()
            : setState(() {
          _selectedpageIndex = index;
        });
       * */

        if (index == 1) {
          setState(() {
            _selectedpageIndex = index;
            Get.to(ScreenA());

          });
        }
        if (index == 2) {
          setState(() {
            Get.to(ScreenC());
            _selectedpageIndex = index;
          });
        }
        if (index == 3) {
          setState(() {
            //Get.to(ScreenC());
            print("3. indexteyim");
            _selectedpageIndex = index;
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

