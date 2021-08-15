import 'package:dkadikoy/controller/splashController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller=Get.put(splashController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "asset/gifs/Dijital1.gif",
          height: 200.0,
          width: 200.0,
          fit: BoxFit.contain,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(controller.ListTextName[0],
              style: TextStyle(
                  fontFamily: "PTSerif",
                  fontSize: 40,
                  color: Colors.white70,
                  fontWeight: FontWeight.w100),
            ),
            Text(
              controller.ListTextName[1],
              style: TextStyle(
                  fontFamily: "PTSerif",
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
          ],
        )

      ],
    );
  }
}
