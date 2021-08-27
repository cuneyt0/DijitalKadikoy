import 'dart:io';

import 'package:dkadikoy/controller/ProfileEditController.dart';
import 'package:dkadikoy/controller/SayYourIdeaController.dart';
import 'package:dkadikoy/controller/settingsController.dart';
import 'package:dkadikoy/controller/splashController.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2Details/SayYourIdeaDetails/Details/MesajAlani.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:get/get.dart';

class SayYourIdeaButtonContent extends StatelessWidget {
  SayYourIdeaController controller = Get.put(SayYourIdeaController());
  final SettingController Contoller = Get.put(SettingController());
  final ProfileEditController profContoller = Get.put(ProfileEditController());

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: true,
      builder: (BuildContext buildContext, ScrollController scrollController) {
        return Container(
          color: Colors.white,
          //height: MediaQuery.of(context).size.height*1,
          child: SingleChildScrollView(
              physics: ScrollPhysics(),
              controller: scrollController,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height*0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                Obx(
                                      () => CircleAvatar(
                                      radius: 26,
                                      backgroundColor: Color(0xffFDCF09),
                                      child: profContoller.selectedImagePath
                                          .value !=
                                          '' &&
                                          profContoller.issave.value == true
                                          ? CircleAvatar(
                                        radius: 70,
                                        backgroundImage: FileImage(
                                          File(
                                            (profContoller
                                                .cropImagePath.value),
                                          ),
                                        ),
                                      )
                                          : CircleAvatar(
                                          radius: 70,
                                          backgroundImage: AssetImage(
                                              "images/cuneyt.jpg"))),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Obx(
                                            () => Text(
                                          "${Contoller.name.value}",
                                          style: TextStyle(
                                              fontFamily: "PTSerif1",
                                              fontSize: 15,
                                              color: Colors.deepPurple),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,),
                                      child: Obx(
                                            () => Text(
                                          "${Contoller.Email.value}",
                                          style: TextStyle(
                                              fontFamily: "PTSerif1",
                                              fontSize: 12,
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: ElevatedButton(
                                  child: Text('GÖNDER'),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      new BorderRadius.circular(30.0),
                                    ),
                                  ),

                                  onPressed: () {
                                    controller.validate.value = false;
                                    debugPrint(controller.Message.value);
                                    if(controller.Message.value==null){
                                      Get.snackbar(
                                          "Mesaj", "Boş Mesaj yollayamazsınız",
                                          snackPosition: SnackPosition.TOP,
                                          backgroundColor: Colors.redAccent,
                                          colorText: Colors.black);
                                    }
                                    else{
                                      Get.snackbar(
                                          "Mesaj", controller.Message.value,
                                          snackPosition: SnackPosition.TOP,
                                          backgroundColor: Colors.white10,
                                          colorText: Colors.black);
                                    }
                                    print('Pressed');

                                    //SayYourIdeaButtonContent();
                                  },
                                )),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    Expanded(flex: 2,child: Message(),),



                  ],
                ),
              )),
        );
      },
      // minChildSize<=initialChildSize
      // initial size of the sheet when app is opened.
      // default value 0.5
      initialChildSize: .40,
      //will take 30% of screen space
      //minimum size to which sheet can be dropped down.
      // default value .25
      minChildSize: .40,

      //max size to which  sheet can be dragged up
      //default value 1.0
      maxChildSize: 0.40,
    );
  }
}
/*
* DraggableScrollableSheet(
      expand: true,
      builder: (BuildContext buildContext, ScrollController scrollController) {
        return Container(
          child: SingleChildScrollView(
              physics: ScrollPhysics(),
              controller: scrollController,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                Obx(
                                      () => CircleAvatar(
                                      radius: 26,
                                      backgroundColor: Color(0xffFDCF09),
                                      child: profContoller.selectedImagePath
                                          .value !=
                                          '' &&
                                          profContoller.issave.value == true
                                          ? CircleAvatar(
                                        radius: 70,
                                        backgroundImage: FileImage(
                                          File(
                                            (profContoller
                                                .cropImagePath.value),
                                          ),
                                        ),
                                      )
                                          : CircleAvatar(
                                          radius: 70,
                                          backgroundImage: AssetImage(
                                              "images/cuneyt.jpg"))),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Obx(
                                            () => Text(
                                          "${Contoller.name.value}",
                                          style: TextStyle(
                                              fontFamily: "PTSerif1",
                                              fontSize: 15,
                                              color: Colors.deepPurple),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,),
                                      child: Obx(
                                            () => Text(
                                          "${Contoller.Email.value}",
                                          style: TextStyle(
                                              fontFamily: "PTSerif1",
                                              fontSize: 12,
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: ElevatedButton(
                                  child: Text('GÖNDER'),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      new BorderRadius.circular(30.0),
                                    ),
                                  ),

                                  onPressed: () {
                                    controller.validate.value = true;

                                    print('Pressed');

                                    //SayYourIdeaButtonContent();
                                  },
                                )),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    Expanded(child: Text("123"),)
                  ],
                ),
              )),
        );
      },
      // minChildSize<=initialChildSize
      // initial size of the sheet when app is opened.
      // default value 0.5
      initialChildSize: .50,
      //will take 30% of screen space
      //minimum size to which sheet can be dropped down.
      // default value .25
      minChildSize: .48,

      //max size to which  sheet can be dragged up
      //default value 1.0
      maxChildSize: 0.80,
    );
*
*
* */