import 'dart:io';
import 'dart:async';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEditController extends GetxController {
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;
  var issave = false.obs;
  var photo = ''.obs;

  //crop code

  var cropImagePath = ''.obs;
  var cropImageSize = ''.obs;

  // Compress code
  var compressImagePath = ''.obs;
  var compressImageSize = ''.obs;

  Future<void> getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value =
          ((File(selectedImagePath.value)).lengthSync() / 1024 / 1024)
                  .toStringAsFixed(2) +
              " Mb";
    } else {
      Get.snackbar("Error", "No image selected",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }

    File? cropImageFile = await ImageCropper.cropImage(
        sourcePath: selectedImagePath.value,
        androidUiSettings: AndroidUiSettings(
          lockAspectRatio: false,
          initAspectRatio: CropAspectRatioPreset.original,
        ),
        aspectRatioPresets: [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.ratio5x3,
          CropAspectRatioPreset.ratio7x5,
          CropAspectRatioPreset.ratio16x9,
        ],
        //maxWidth: 1024,
        //maxHeight: 1024,
        compressFormat: ImageCompressFormat.jpg);
    cropImagePath.value = cropImageFile!.path;


    cropImageSize.value =
        ((File(cropImagePath.value)).lengthSync() / 1024 / 1024)
                .toStringAsFixed(2) +
            " Mb";
  }

  Future<void> GetPhoto() async {
    if (issave.value != true) {
      photo.value = cropImagePath.value;
    } else {
      return;
    }
  }

  void deleteMemoryImage() {
    cropImagePath.value = '';
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
