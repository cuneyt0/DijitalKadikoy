

import 'package:dkadikoy/view/HomePageContent/HomePage.dart';

import 'package:dkadikoy/view/SplashContent/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splashController extends GetxController{

  final isLoading=false.obs;
  List<String> UserName=[
    "Cüneyt AYKAÇ",
    "Ahmet",
    "Mehmet",

  ].obs;

  List<String> TextFormFieldSerach=[
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
  /* Future.delayed(Duration(seconds: 2),(){
      Get.to(HomePage());
    });*/
    // TODO: implement onInit
    super.onInit();


  }


}