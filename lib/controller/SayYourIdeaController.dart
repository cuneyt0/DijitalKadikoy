import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SayYourIdeaController extends GetxController{

  var Message="".obs;
  var hinttext="Mesajınızı buraya yazınız...".obs;

  var validate=false.obs;

  RxList<Image>DrawerIcon=[
    Image.asset("images/Swiper/img1.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img2.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img3.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img4.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img5.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img1.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img2.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img3.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img4.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img5.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img5.jpg",fit: BoxFit.fill),



  ].obs;
  RxList<Image>Iconn=[
    Image.asset("images/Swiper/img1.jpg",fit: BoxFit.fill ),
    Image.asset("images/Swiper/img2.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img3.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img4.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img5.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img1.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img2.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img3.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img4.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img5.jpg",fit: BoxFit.fill),
    Image.asset("images/Swiper/img5.jpg",fit: BoxFit.fill),



  ].obs;
  List<String> Title=[
    "Başlık1",
    "Başlık2",
    "Başlık3",
    "Başlık4",
    "Başlık5",
    "Başlık6",
    "Başlık7",
    "Başlık8",
    "Başlık9",
    "Başlık10",
    "Başlık11",

  ].obs;
  List<String> Content=[
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",

  ].obs;
  List<String> SubTitle=[
    "SubTitle1",
    "SubTitle2",
    "SubTitle3",
    "SubTitle4",
    "SubTitle5",
    "SubTitle6",
    "SubTitle7",
    "SubTitle8",
    "SubTitle9",
    "SubTitle10",
    "SubTitle11",

  ].obs;


  var isControll=true.obs;
  change() =>isControll.value=!isControll.value ;

  var Nesne=Begen(begendi: false).obs;


}
class Begen{
  bool begendi=true;
  Begen({required this.begendi});
}