import 'package:dkadikoy/controller/SwiperController.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2Details/Decide.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2Details/SayYour%C4%B0dea.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2Details/TakeTheSurvey.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KadikoyContainer2 extends StatelessWidget {
  SwiperControllerr swController = Get.put(SwiperControllerr());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        //mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Expanded(
                    child: InkWell(
                      onTap:() {
                        Get.to(()=>SayYourIdea());
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "images/Swiper/img1.jpg",
                              ),
                              fit: BoxFit.fill),
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:68.0),
                  child: Center(
                    child: Text(
                      "FİKRİNİ \n SÖYLE",
                      style: TextStyle(
                          fontFamily: "PTSerif-1",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: Expanded(
                    child: InkWell(
                      onTap:() {
                        Get.to(()=>Decide());
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "images/Swiper/img2.jpg",
                              ),
                              fit: BoxFit.fill),
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:68.0),
                  child: Center(
                    child: Text(
                      "KARAR \n   VER",
                      style: TextStyle(
                          fontFamily: "PTSerif-1",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: InkWell(
                    onTap:() {
                      Get.to(()=>TakeTheSurvey());
                    },
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "images/Swiper/img3.jpg",
                            ),
                            fit: BoxFit.fill),
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:68.0),
                  child: Center(
                    child: Text(
                      "ANKETE \n   KATIL",
                      style: TextStyle(
                          fontFamily: "PTSerif-1",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
*
*
* Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "images/Swiper/img1.jpg",
                          ),
                          fit: BoxFit.fill,),
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10,bottom: 10),
                  child: Text("Karar ver",style: TextStyle(
                      fontFamily: "PTSerif-1",
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),),
                ),
              ],
            ),
          ),
          Expanded(

            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "images/Swiper/img2.jpg",
                        ),
                        fit: BoxFit.fill),
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("FİKRİNİ SÖYLE",style: TextStyle(
                      fontFamily: "PTSerif-1",
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),),
                ),
              ],
            ),
          ),
          Expanded(

            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(

                        image: AssetImage(
                          "images/Swiper/img3.jpg",
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ), Text("ANKETE\n KATIL",style: TextStyle(
                  fontFamily: "PTSerif-1",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),),

              ],
            ),
          )
        ],
      ),
    );
*
*
*
*
*
*
*
*
* */
