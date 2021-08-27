import 'package:dkadikoy/controller/afetController.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/AfetPages/AfetListview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Afet extends StatelessWidget {
  const Afet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Afet",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: AfetListview(),
    );
  }
}
/*
 Flexible(
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.menu))),

 */