import 'package:dkadikoy/controller/SwiperController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class PageviewInd extends StatelessWidget {
  SwiperControllerr swController = Get.put(SwiperControllerr());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.26,
          child: Swiper(
            itemWidth: MediaQuery.of(context).size.width * 0.25,
            itemCount: swController.swImages.length,
            itemBuilder: (context, index) {
              return Stack(fit: StackFit.expand, children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: swController.swImages[index],
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 30, top: 50, right: 50),
                    child: Obx(()=>
                       Text(
                        swController.Title[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: Obx(()=>Text(
                      swController.Subtitle[index],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ]);
            },
            containerHeight: double.infinity,
            curve: Curves.ease,
            duration: 2000,
            //viewportFraction: 0.7,
            scale: 0.9,
            autoplay: true,
            pagination: SwiperPagination(builder: SwiperPagination.dots),
            //itemHeight: double.maxFinite,
          )),
    );
  }
}

