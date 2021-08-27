import 'package:dkadikoy/controller/MenuController.dart';
import 'package:dkadikoy/controller/splashController.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/AfetPages/afet.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/E_Belediye/e_belediye.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/settingspages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final splashController sContoller = Get.put(splashController());
    //int _selectedIndex = 0;
    final Menucontroller MenuContoller = Get.put(Menucontroller());

    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(""),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${sContoller.UserName[0]}",
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
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage:NetworkImage(
                      "https://media-exp1.licdn.com/dms/image/C4D03AQFmczNhLv7Xmw/profile-displayphoto-shrink_200_200/0/1611608032504?e=1632960000&v=beta&t=XmOjZ9jaWHhRx34gGZhz0j2ZZtw2SofDZRhFUQxcz1Y",
                    ),
                    //radius: 15.0
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: MenuContoller.DrawerIcon.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      onTap: () => SayfayaGit(context,MenuContoller.DrawerContent[index]),
                      trailing: Obx(() => MenuContoller.DrawerIcon[index]),
                      title: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Obx(
                            () => Text(
                              MenuContoller.DrawerContent[index],
                              textAlign: TextAlign.right,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      color: Colors.black,
                                      fontFamily: "PTSerif"),
                            ),
                          )),
                      selected: index == MenuContoller.isSelectedList[index],
                      selectedTileColor: Colors.blue,
                      onLongPress: () {},
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  //Get.to(mainScreen());
                },
                child: Text(
                  "Arama Yap",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  SayfayaGit(BuildContext context, String drawerContent) {
    print("tıklanıldı");
    if(drawerContent=="AYARLAR"){
      Get.to(()=>Settings());
    }
    if(drawerContent=="E-BELEDİYE"){
      Get.to(()=>EBelediye());
    }
    if(drawerContent=="AFET"){
      Get.to(()=>Afet());
    }
  }









}
