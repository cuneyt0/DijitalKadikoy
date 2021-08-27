import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menucontroller extends GetxController{
 List<bool>isSelectedList=[
   false,
   false,
   false,
   false,
   false,
   false,
   false,
   false,
   false,
   false,
   false,
   false,
 ].obs;
 RxList<Image>DrawerIcon=[
   Image.asset("images/speech-bubble.png",height: 30,),
   Image.asset("images/k.png",height: 30,),
   Image.asset("images/settings.png",height: 30,),
   Image.asset("images/k.png",height: 30,),
   Image.asset("images/theater.png",height: 30,),
   Image.asset("images/heartbeat.png",height: 30,),
   Image.asset("images/leaf.png",height: 30,),
   Image.asset("images/family.png",height: 30,),
   Image.asset("images/running.png",height: 30,),
   Image.asset("images/brain.png",height: 30,),
   Image.asset("images/leaf.png",height: 30,),
   Image.asset("images/earthquake.png",height: 30,),


 ].obs;
 RxList<Image>QuickMenuIcon=[
   Image.asset("images/speech-bubble.png",height: 40,),
   Image.asset("images/k.png",height: 30,),
   Image.asset("images/settings.png",height: 30,),
   Image.asset("images/k.png",height: 30,),
   Image.asset("images/theater.png",height: 30,),
   Image.asset("images/heartbeat.png",height: 30,),
   Image.asset("images/leaf.png",height: 30,),
   Image.asset("images/family.png",height: 30,),
   Image.asset("images/running.png",height: 30,),
   Image.asset("images/brain.png",height: 30,),
   Image.asset("images/leaf.png",height: 30,),
   Image.asset("images/earthquake.png",height: 30,),


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

}