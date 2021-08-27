import 'package:dkadikoy/controller/settingsController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {


  final GlobalKey<FormState> mailKey = GlobalKey<FormState>();
  final SettingController Contoller = Get.put(SettingController());
  TextEditingController? mailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
          leading: Text(
            "E-Mail",
            style: TextStyle(color: Colors.grey),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Obx(()=>Text(Contoller.Email.value)),
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
                            child: Center(child: Text("E-Mail",style: TextStyle(
                              //fontFamily: "PTSerif1",
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),),),
                          ),
                          Form(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            key: mailKey,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              controller: mailController,
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
                                    mailController!.clear();
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: 'E-Mail ',
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator:_emailKontrol
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              children: [
                                Divider(),
                                InkWell(
                                  onTap: () {
                                    if (mailKey.currentState!.validate()) {
                                      setState(() {
                                        mailKey.currentState!.save();
                                        Contoller.Email.value = mailController!.text;
                                        Contoller.Email.value.toString();
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

   String? _emailKontrol(String? value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value!))
      return 'Geçersiz mail';
    else
      return null;


  }
}
