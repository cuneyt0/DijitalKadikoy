import 'dart:io';
import 'package:dkadikoy/controller/ProfileEditController.dart';
import 'package:dkadikoy/controller/splashController.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/DijitalKad%C4%B1koyDetailsPages/Content.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/DijitalKad%C4%B1koyDetailsPages/DijitalKadikoyHakkinda.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/DijitalKad%C4%B1koyDetailsPages/SequritySettings.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/KadikoyKartDetails/KadikoyKart.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/Kullan%C4%B1ciAyarlariDetails/Email.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/Kullan%C4%B1ciAyarlariDetails/Name.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/Kullan%C4%B1ciAyarlariDetails/Phone.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/Kullan%C4%B1ciAyarlariDetails/Surname.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/Kullan%C4%B1ciAyarlariDetails/password.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/ProfileEditPages/ProfileImageEdit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final splashController sContoller = Get.put(splashController());
final ProfileEditController profContoller = Get.put(ProfileEditController());

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey.shade100,
          appBar: AppBar(
            title: Text("AYARLAR"),
            centerTitle: true,
            backgroundColor: Colors.black,
            actions: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("KAYDET"),
              ),
            ],
          ),
          body: ListView(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        " ${sContoller.ListTextName[0]}\n ${sContoller.ListTextName[1]}",
                        style: TextStyle(
                            fontFamily: "PTSerif1",
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
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
                          Stack(
                            children: [
                              Obx(
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
                              Positioned(
                                top: 5,
                                left: 10,
                                right: 15,
                                child: RawMaterialButton(
                                  elevation: 20,
                                  //fillColor: Colors.yellow,
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Colors.white.withOpacity(0.50),
                                  ),
                                  padding: EdgeInsets.all(10),
                                  shape: CircleBorder(),
                                  onPressed: () {
                                    Get.to(() => ProfileImageEdit());
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Text(
                  "KADIKÖY KART",
                  style: TextStyle(
                      //fontFamily: "PTSerif1",
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
              ),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                    leading: Icon(Icons.credit_card),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text("Kart Ayarları"),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Get.to(() => CardSetting());
                      },
                      icon: Icon(Icons.edit_outlined),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Text(
                  "KULLANICI AYARLARI",
                  style: TextStyle(
                      //fontFamily: "PTSerif1",
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
              ),
              Name(),
              Divider(
                height: 1,
                thickness: 0.1,
              ),
              Surname(),
              Divider(
                height: 1,
                thickness: 0.1,
              ),
              Email(),
              Divider(
                height: 1,
                thickness: 0.1,
              ),
              Phone(),
              Divider(
                height: 1,
                thickness: 0.1,
              ),
              Password(),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Text(
                  "DİJİTAL KADIKÖY",
                  style: TextStyle(
                      //fontFamily: "PTSerif1",
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
              ),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                    leading: Text(
                      "Gizlilik Ayarları",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Get.to(() => SecuritySettings());
                      },
                      icon: Icon(Icons.edit_outlined),
                    )),
              ),
              Divider(
                height: 1,
                thickness: 0.1,
              ),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                    leading: Text(
                      "İletişim",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Get.to(() => Content());
                      },
                      icon: Icon(Icons.edit_outlined),
                    )),
              ),
              Divider(
                height: 1,
                thickness: 0.1,
              ),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                    leading: Text(
                      "Dijital Kadıköy Hakkında",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Get.to(() => DijitalKadikoyHakkinda());
                      },
                      icon: Icon(Icons.edit_outlined),
                    )),
              ),
              Divider(
                height: 1,
                thickness: 0.1,
              ),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                    leading: Icon(Icons.close),
                    title: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        "Çıkış Yap",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit_outlined),
                    )),
              ),
            ],
          )),
    );
  }
}
