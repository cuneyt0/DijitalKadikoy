import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwiperControllerr extends GetxController{


  List<String> Title=[
    "Lorem Ipsum, adı bilinmeyen bir matbaacının bir",
    "orem Ipsum pasajlarının birçok çeşitlemesi vardır.",
    "1500'lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.",
    "Lorem Ipsum, adı bilinmeyen bir matbaacının bir",
    "orem Ipsum pasajlarının birçok çeşitlemesi vardır.",

  ].obs;
  List<String> Subtitle=[
    "Bu üreteç, 200'den fazla ",
    "1914 H. Rackham çevirisinden alınan İngilizce",
    "Mehmet",
    "Bu üreteç, 200'den fazla ",
    "1914 H. Rackham çevirisinden alınan İngilizce",

  ].obs;


  RxList<Image> swImages=[

    Image.asset("images/Swiper/img1.jpg",fit: BoxFit.fitWidth),
    Image.asset("images/Swiper/img2.jpg",fit: BoxFit.fitWidth),
    Image.asset("images/Swiper/img3.jpg",fit: BoxFit.fitWidth),
    Image.asset("images/Swiper/img4.jpg",fit: BoxFit.fitWidth),
    Image.asset("images/Swiper/img5.jpg",fit: BoxFit.fitWidth),



  ].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }

}