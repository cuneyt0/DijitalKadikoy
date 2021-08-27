import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dkadikoy/Ascreen.dart';
import 'package:dkadikoy/CScreen.dart';
import 'package:dkadikoy/view/HomePageContent/AppBarHeader.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyCardContainer.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2.dart';
import 'package:dkadikoy/view/HomePageContent/SearchBarUI.dart';
import 'package:dkadikoy/view/HomePageContent/quickMenu.dart';
import 'package:dkadikoy/view/MenuContent/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'PageviewSwiper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    var _selectedpageIndex = 0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _drawerKey,
      endDrawer: Stack(
        children: [
          MenuScreen(),
        ],
      ),
      endDrawerEnableOpenDragGesture: false,
      bottomNavigationBar: ConvexAppBar(
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
              //Get.to(showSheet(context));
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
      ),
      body: Stack(
        children: [
          SafeArea(
              child: ListView(
            children: [
              MyAppBar(),
              SearchBarUI(),

              PageviewInd(),
              KadikoyCardContainer(),
              KadikoyContainer2(),
              //Expanded(flex: 9, child: SearchBarUI()),
            ],
          )),
          QuickMenu()
        ],
      ),
    );
  }
}
