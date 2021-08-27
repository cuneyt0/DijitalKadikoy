import 'package:dkadikoy/controller/afetController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckBoxState {
  String? title;
  bool? value;

  CheckBoxState({required this.title, this.value = false});
}

class AfetCantam extends StatefulWidget {

  @override
  _AfetCantamState createState() => _AfetCantamState();
}

class _AfetCantamState extends State<AfetCantam> {
  AfetController controller = Get.put(AfetController());
  List<CheckBoxState> notification = [
    CheckBoxState(title: "İçecek Su"),
    CheckBoxState(title: "Ekmek"),
  ];

  @override
  Widget build(BuildContext context) {

    TextEditingController textController=TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Afet",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  controller.CardTitle[0],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(controller.CardSubTitle[0]),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                 ...notification.map(buidSingleCheckBox).toList(),
              ],
            )
          ),
          Card(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Yeni Malzeme Ekle",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              trailing: GestureDetector(
                  onTap: () {
                    print("Yeni Malzeme Ekle tıklanıldı");

                    Get.defaultDialog(
                        title: "Malzeme Ekle",
                        content: Column(
                          children: [
                            TextField(
                              controller: textController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white10,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Eklemek istediginiz Malzeme ',
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  var addText=textController.text;
                                  setState(() {
                                    var addcontent= CheckBoxState(title: addText);
                                    notification.add(addcontent);
                                  });

                                  Get.back();
                                  Get.snackbar(
                                      "Başarılı", "Malzeme başarıyla eklendi",
                                      snackPosition: SnackPosition.TOP,
                                      backgroundColor: Colors.green,
                                      colorText: Colors.white);
                                },
                                child: Text("Kaydet"))
                          ],
                        ));
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.deepOrange,
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget buidSingleCheckBox(CheckBoxState checkBoxState) => CheckboxListTile(
      value: checkBoxState.value,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(checkBoxState.title.toString()),
      ),
      onChanged: (value) {
        setState(() {
          checkBoxState.value = value!;
        });
      });
}


/*
*
* class AfetCantam extends StatelessWidget {

  AfetController controller = Get.put(AfetController());
  @override
  Widget build(BuildContext context) {

    TextEditingController textController=TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Afet",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  controller.CardTitle[0],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(controller.CardSubTitle[0]),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.YeniMalzemeEkleContent.length,
                itemBuilder: (context, index) {
                  return Card(
                      margin: EdgeInsets.only(
                          top: 20, left: 20, right: 20, bottom: 10),
                      child:Obx(
                      () => CheckboxListTile(
                      value: controller.checkBool.value,
                  title: Text(controller.YeniMalzemeEkleContent[index]),

                  onChanged: (value) {
                  controller.checkBool.value = !controller.checkBool.value;
                  })
                  ));
                }),
          ),
          Card(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Yeni Malzeme Ekle",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              trailing: GestureDetector(
                  onTap: () {
                    print("Yeni Malzeme Ekle tıklanıldı");

                    Get.defaultDialog(
                        title: "Malzeme Ekle",
                        content: Column(
                          children: [
                            TextField(
                              controller: textController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white10,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'Eklemek istediginiz Malzeme ',
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  controller.AddData.value =
                                      textController.text;
                                  controller.YeniMalzemeEkleContent.add(
                                      controller.AddData.value);
                                  Get.back();
                                  Get.snackbar(
                                      "Başarılı", "Malzeme başarıyla eklendi",
                                      snackPosition: SnackPosition.TOP,
                                      backgroundColor: Colors.green,
                                      colorText: Colors.white);
                                },
                                child: Text("Kaydet"))
                          ],
                        ));
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.deepOrange,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
*
*
* */
