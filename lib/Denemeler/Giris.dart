import 'package:dkadikoy/Denemeler/SignInPages/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'RegisterPages/RegisterPages.dart';


class Giris extends StatelessWidget {
  const Giris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "asset/landingpageone.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Text(""),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                child: Text(
                  "Loremİpsumaksjdksdjfkskflksdgfdgdkfglkdfgkldfgaksfkdfksdfdjgjfdgkjjsfdgj"
                  "Loremİpsumaksjdksdjfkskflksdgfdgdkfglkdfgkldfgaksfkdfksdfdjgjfdgkjjsfdgj"
                  "Loremİpsumaksjdksdjfkskflksdgfdgdkfglkdfgkldfgaksfkdfksdfdjgjfdgkjjsfdgj",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 0),
              child: ElevatedButton(
                  child: Text("Giriş Yap",style: TextStyle(color: Colors.black),),
                  onPressed: () {
                    Get.to(()=>SignIn());
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,

                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(30)),
                      padding:
                          EdgeInsets.all(20) //content padding inside button
                      )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10,bottom:10),
              child: ElevatedButton(
                  child: Text("Kayıt Ol",style: TextStyle(color: Colors.black),),
                  onPressed: () {
                    Get.to(()=>Register());
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,

                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(30)),
                      padding:
                      EdgeInsets.all(20) //content padding inside button
                  )),
            ),
            Expanded(child: Image.asset("asset/belediyelogo.jpg"),)
          ],
        )
      ],
    ));
  }
}
