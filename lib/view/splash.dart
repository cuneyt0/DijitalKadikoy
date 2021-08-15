import 'dart:async';
import 'package:dkadikoy/controller/splashController.dart';
import 'package:dkadikoy/core/SplashBody.dart';
import 'package:dkadikoy/view/homePage.dart';
import 'package:flutter/material.dart';


class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {




    return Scaffold(

      backgroundColor: Colors.cyan,
      body: SplashBody(),
    );
  }
}


/*

Container(child:Center(child: Text("asd")))


*Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "asset/gifs/Dijital1.gif",
                height: 125.0,
                width: 120.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(ListTextName[0],
                    style: TextStyle(
                        fontFamily: "PTSerif",
                        fontSize: 40,
                        color: Colors.white70,
                        fontWeight: FontWeight.w100),
                  ),
                  Text(
                    ListTextName[1],
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
*
*

*
*/
