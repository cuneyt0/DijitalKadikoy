import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  var _password = "12345";
  final GlobalKey<FormState> passwordKey = GlobalKey<FormState>();
  TextEditingController? paswordController = TextEditingController();
  TextEditingController? paswordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
          leading: Text(
            "Sifre",
            style: TextStyle(color: Colors.grey),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(_password),
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
                              "Sifre",
                              style: TextStyle(
                                  //fontFamily: "PTSerif1",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Form(
                          key: passwordKey,
                          child: Column(
                            children: [
                              TextFormField(
                                obscureText: true,
                                controller: paswordController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey)),

                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      paswordController!.clear();
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: 'sifre ',
                                  //labelText: 'Telefon Numarası',
                                ),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Bu alanı boş bırakamazsınız!';
                                  } else if (paswordController!.text !=
                                      paswordController2!.text) {
                                    return "sifreler uyumsuz";
                                  } else if (value.length < 6) {
                                    return "Kısa şifre";
                                  }
                                  return null;
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: TextFormField(
                                  obscureText: true,
                                  controller: paswordController2,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),

                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        paswordController2!.clear();
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'Tekrar Girin ',
                                    //labelText: 'Telefon Numarası',
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Bu alanı boş bırakamazsınız!';
                                    } else if (paswordController2!.text !=
                                        paswordController!.text) {
                                      return "Sifreler uyumsuz";
                                    } else if (value.length < 6) {
                                      return "Kısa şifre";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: [
                              Divider(),
                              InkWell(
                                onTap: () {
                                  if (passwordKey.currentState!.validate()) {
                                    setState(() {
                                      passwordKey.currentState!.save();
                                      _password = paswordController!.text;
                                      _password.toString();
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
