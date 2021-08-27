import 'dart:async';
import 'package:dkadikoy/controller/SayYourIdeaController.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2Details/SayYourIdeaDetails/Details/DraggableScrollableSheet.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2Details/SayYourIdeaDetails/Details/SayYourIdeaButtonContent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:get/get.dart';
import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';

class Details extends StatelessWidget {
  Details({
    required this.Photo,
    required this.Title,
    required this.subTitle,
    required this.Content,
  });

  var Photo, Title, subTitle, Content;

  @override
  Widget build(BuildContext context) {
    SayYourIdeaController controller = Get.put(SayYourIdeaController());


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            child: Photo,
            height: MediaQuery.of(context).size.height * 0.65,
            width:MediaQuery.of(context).size.width*1 ,),
         Obx(()=>controller.validate.value==false? DraggableSheet(Content: Content,subTitle: subTitle,Photo: Photo,Title: Title,):SayYourIdeaButtonContent(),),
        ],
      ),
    );
  }
}

