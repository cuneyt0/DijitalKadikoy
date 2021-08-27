import 'dart:io';

import 'package:dkadikoy/controller/EBelediyeController.dart';
import 'package:dkadikoy/controller/ProfileEditController.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
class EBelediyeAppBar extends StatelessWidget  {
  final EBelediyeController eContoller = Get.put(EBelediyeController());
  final ProfileEditController profContoller = Get.put(ProfileEditController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              " ${eContoller.EBelediyeAppBar[0]}",
              style: TextStyle(
                  fontFamily: "PTSerif1", fontSize: 18, color: Colors.black),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${eContoller.UserName[0]}",
                        style: TextStyle(
                            fontFamily: "PTSerif1",
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      Text(
                        "Hoşgeldin!",
                        style: TextStyle(
                            fontFamily: "PTSerif1",
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    print("Appbardaki CircularAvatara tıklanıldı");
                  },
                  child: Obx(
                        () => CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffFDCF09),
                        child: profContoller
                            .selectedImagePath.value !=
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
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
/*
* Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "${widget.sContoller.UserName[0]}",
                    style: TextStyle(
                        fontFamily: "PTSerif1",
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  Text(
                    "Hello",
                    style: TextStyle(
                        fontFamily: "PTSerif1",
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ],
              ),
            ),

            CircleAvatar(

              maxRadius: 30,
              backgroundImage: NetworkImage(
                "https://media-exp1.licdn.com/dms/image/C4D03AQFmczNhLv7Xmw/profile-displayphoto-shrink_200_200/0/1611608032504?e=1632960000&v=beta&t=XmOjZ9jaWHhRx34gGZhz0j2ZZtw2SofDZRhFUQxcz1Y",
              ),
            ),

          ],
        ),
*
*
* */