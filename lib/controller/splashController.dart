

import 'package:dkadikoy/view/HomePage.dart';

import 'package:dkadikoy/view/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splashController extends GetxController{

  final isLoading=false.obs;
  List<String> UserName=[
    "Cüneyt",
    "Ahmet",
    "Mehmet",

  ].obs;
  RxList<Image>DrawerIcon=[
   Image.asset("images/speech-bubble.png",),
    Image.asset("images/k.png"),
    Image.asset("images/settings.png"),
    Image.asset("images/k.png"),
    Image.asset("images/theater.png"),
    Image.asset("images/heartbeat.png"),
    Image.asset("images/leaf.png"),
    Image.asset("images/family.png"),
    Image.asset("images/running.png"),
    Image.asset("images/brain.png"),
    Image.asset("images/leaf.png"),
    Image.asset("images/earthquake.png",),


  ].obs;
  List<String> DrawerContent=[
    "MESAJLAR",
    "TRANSFERLER",
    "AYARLAR",
    "E-BELEDİYE",
    "KÜLTÜR SANAT",
    "SAGLIK",
    "ÇEVRE",
    "SOSYAL HİZMETLER",
    "SPOR",
    "FİKİR",
    "KÜLTÜR YOLU",
    "AFET",
  ].obs;
  List<String> ListTextName=[
    "Dijital",
    "Kadıköy",

  ].obs;

  @override
  void onInit() {
   Future.delayed(Duration(seconds: 2),(){
      Get.to(HomePage());
    });
    // TODO: implement onInit
    super.onInit();


  }


}