import 'package:dkadikoy/controller/MenuController.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/AfetPages/afet.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/E_Belediye/e_belediye.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/settingspages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuickMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Menucontroller menucontroller = Get.put(Menucontroller());
    return DraggableScrollableSheet(
      expand: true,

      builder: (BuildContext buildContext, ScrollController scrollController) {
        return Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: [
                Container(child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Hızlı Menu",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PTSerif-1"),
                  ),
                ),
                ),

                Expanded(
                  child: GridView.builder(
                    shrinkWrap:true,
                      physics: AlwaysScrollableScrollPhysics(),
                      controller: scrollController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 1,
                          mainAxisExtent: 150),
                      itemCount: menucontroller.DrawerIcon.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              child: CircleAvatar(
                                maxRadius: 40,
                                backgroundColor: Colors.grey.shade100,
                                minRadius: 40,
                                child: Obx(
                                      () => menucontroller.DrawerIcon[index],
                                ),
                              ),
                              onTap: () {
                                print("tıklanıldı:$index");
                                if (index == 2) {
                                  Get.to(() => Settings());
                                }
                                if (index == 3) {
                                  Get.to(() => EBelediye());
                                }
                                if (index == 11) {
                                  Get.to(() => Afet());
                                }
                              },
                            ),
                            Expanded(
                              child: Obx(
                                    () => Text(
                                  menucontroller.DrawerContent[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                      color: Colors.blue,
                                      fontFamily: "PTSerif"),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),


              ],
            ),
          ),
        );
      },
      // minChildSize<=initialChildSize
      // initial size of the sheet when app is opened.
      // default value 0.5
      initialChildSize: .3, //will take 30% of screen space
      //minimum size to which sheet can be dropped down.
      // default value .25
      minChildSize: .15,

      //max size to which  sheet can be dragged up
      //default value 1.0
      maxChildSize: 0.9,
    );
  }
}

/*
*
* Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Hızlı Menu",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PTSerif-1"),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                      physics: ScrollPhysics(),
                      controller: scrollController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 1,
                          mainAxisExtent: 150),
                      itemCount: menucontroller.DrawerIcon.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              child: CircleAvatar(
                                maxRadius: 40,
                                backgroundColor: Colors.grey.shade100,
                                minRadius: 40,
                                child: Obx(
                                  () => menucontroller.DrawerIcon[index],
                                ),
                              ),
                              onTap: () {
                                print("tıklanıldı:$index");
                                if (index == 2) {
                                  Get.to(() => Settings());
                                }
                                if (index == 3) {
                                  Get.to(() => EBelediye());
                                }
                                if (index == 11) {
                                  Get.to(() => Afet());
                                }
                              },
                            ),
                            Expanded(
                              child: Obx(
                                () => Text(
                                  menucontroller.DrawerContent[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                          color: Colors.blue,
                                          fontFamily: "PTSerif"),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
* */