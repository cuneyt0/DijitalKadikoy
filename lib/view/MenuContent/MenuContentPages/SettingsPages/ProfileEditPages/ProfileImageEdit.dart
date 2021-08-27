import 'dart:io';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dkadikoy/controller/ProfileEditController.dart';
import 'package:dkadikoy/controller/splashController.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/SettingsPages/settingspages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProfileEditController controller = Get.put(ProfileEditController());

    String? title = "AVATAR";

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: ConvexAppBar(

          initialActiveIndex: 1,
          backgroundColor: Colors.black,

          items: [
            TabItem(icon: Icons.photo),
            TabItem(icon: Icons.camera),
            TabItem(icon: Icons.save),
            TabItem(icon: Icons.delete),
          ],
          onTap: (i) {
            if (i == 0) {
              print("clicl index $i");
              controller.getImage(ImageSource.gallery);
            }
            if (i == 1) {
              print("clicl index $i");
              controller.getImage(ImageSource.camera);
            }
            if (i == 3) {
              print("clicl index $i");
              controller.deleteMemoryImage();
            }
          },
        ),
        appBar: AppBar(
          title: Text(title),
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
              child: TextButton(
                  onPressed: () {
                    controller.issave.value = true;
                    controller.GetPhoto();
                    Get.snackbar(
                        "Başarılı", "Başarıyla resminizi degiştirdiniz",
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.green,
                        colorText: Colors.white);
                  },
                  child: Text(
                    "KAYDET",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
        body: Obx(() =>
        controller.cropImagePath.value == ''
            ? Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          color: Colors.white,
          child: Center(
            child: Text(
              "Select image from camera/gallery",
              style: TextStyle(fontSize: 20),
            ),
          ),
        )
            : Container(height: MediaQuery
            .of(context)
            .size
            .height,
            color: Colors.grey,
            child: Image.file(
              File(controller.cropImagePath.value,), height: MediaQuery
                .of(context)
                .size
                .height, fit: BoxFit.cover


              ,))),
      ),
    );
  }
}

/*
* SingleChildScrollView(
            child: Column(
          children: [

            SizedBox(
              height: 10,
            ),
            Obx(() => controller.selectedImagePath.value == ''
                ? Text(
                    "Select image from camera/gallery",
                    style: TextStyle(fontSize: 20),
                  )
                : Image.file(File(controller.selectedImagePath.value))),
            SizedBox(
              height: 10,
            ),
            Obx(() => Text(controller.selectedImageSize.value)),
            ElevatedButton(
              onPressed: () {
                controller.getImage(ImageSource.camera);
              },
              child: Text("CAMERA"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.getImage(ImageSource.gallery);
              },
              child: Text("Galeri"),
            ),
          ],
        )),
*
* */
