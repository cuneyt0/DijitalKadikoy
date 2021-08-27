import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  var _telefonAlani = "05453333333";
  final GlobalKey<FormState> phoneNumberKey = GlobalKey<FormState>();
  TextEditingController? phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
          leading: Text(
            "Telefon",
            style: TextStyle(color: Colors.grey),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 33.0),
            child: Text(_telefonAlani),
          ),
          trailing: IconButton(
            onPressed: () {
              showDialog(
                barrierDismissible: false,
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
                              "TELEFON",
                              style: TextStyle(
                                  //fontFamily: "PTSerif1",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Form(
                          key: phoneNumberKey,
                          child: TextFormField(
                            controller: phoneNumberController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.grey,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),

                              suffixIcon: IconButton(
                                onPressed: () {
                                  phoneNumberController!.clear();
                                },
                                icon: Icon(
                                  Icons.close,
                                  color: Colors.black,
                                ),
                              ),
                              hintText: '+90 ',
                              //labelText: 'Telefon Numarası',
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Bu alanı boş bırakamazsınız!';
                              } else if (value.length < 11) {
                                return "11 den küçük olamaz";
                              } else if (value.length > 15) {
                                return "15 den büyük  olamaz";
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: [
                              Divider(),
                              InkWell(
                                onTap: () {
                                  if (phoneNumberKey.currentState!.validate()) {
                                    setState(() {
                                      phoneNumberKey.currentState!.save();
                                      _telefonAlani =
                                          phoneNumberController!.text;
                                      _telefonAlani.toString();
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
                },
              );
            },
            icon: Icon(Icons.edit_outlined),
          )),
    );
  }
}
