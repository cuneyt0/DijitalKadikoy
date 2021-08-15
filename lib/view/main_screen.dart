import 'package:dkadikoy/controller/splashController.dart';
import 'package:dkadikoy/core/AppBarHeader.dart';
import 'package:dkadikoy/core/SearchBarUI.dart';
import 'package:dkadikoy/view/bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mainScreen extends StatelessWidget {
  final zoomDrawerController;

  mainScreen({this.zoomDrawerController});

  splashController splashContoller = Get.put(splashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        sContoller: splashContoller,
      ),
      bottomNavigationBar: BottomBar(
        zoomdrawerController: zoomDrawerController,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: SearchBarUI()),
          ],
        ),
      ),
    );
  }
}
/*
* SafeArea(
    child: Column(children: [
    Expanded(child: SearchBarUI()),
    ],),)
*
*
* */
