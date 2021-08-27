import 'package:dkadikoy/controller/settingsController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {

  final GlobalKey<FormState> nameKey = GlobalKey<FormState>();
  TextEditingController? nameController = TextEditingController();
  final SettingController Contoller = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
          leading: Text(
            "İsim",
            style: TextStyle(color: Colors.grey),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Obx(()=>Text(Contoller.name.value)),
          ),
          trailing: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(flex: 5, child: Container()),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Icon(Icons.close),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: Text(
                                "İSMİNİZ",
                                style: TextStyle(
                                    //fontFamily: "PTSerif1",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            key: nameKey,
                            child: TextFormField(
                                cursorColor: Colors.black,
                                controller: nameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      nameController!.clear();
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: 'İSMİNİZ ',
                                ),
                                keyboardType: TextInputType.text,
                                validator: _isimKontrol),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              children: [
                                Divider(),
                                InkWell(
                                  onTap: () {
                                    if (nameKey.currentState!.validate()) {
                                      setState(() {
                                        nameKey.currentState!.save();
                                        Contoller.name.value = nameController!.text;
                                        Contoller.name.value.toString();
                                        Get.back();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Başarıyla degiştirilmiştir'),
                                          ),
                                        );
                                      });
                                      return;
                                    }
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Kaydet"),
                                      Icon(Icons.arrow_right_alt),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  });
            },
            icon: Icon(Icons.edit_outlined),
          )),
    );
  }

  String? _isimKontrol(String? value) {
    RegExp regex = RegExp("^[a-zA-Z]+\$");
    if (!regex.hasMatch(value!))
      return 'Isim numara içermemeli';
    else
      return null;
  }
}
