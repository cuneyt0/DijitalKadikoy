import 'package:dkadikoy/controller/SwiperController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KadikoyContainer2 extends StatelessWidget {
  SwiperControllerr swController = Get.put(SwiperControllerr());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/Swiper/img1.jpg",
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            ),
          ),
          Expanded(

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
          Expanded(

            child: Padding(
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
            ),
          )
        ],
      ),
    );
  }
}
