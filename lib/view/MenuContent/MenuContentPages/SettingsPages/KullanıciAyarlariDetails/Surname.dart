import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Surname extends StatefulWidget {
  const Surname({Key? key}) : super(key: key);

  @override
  _SurnameState createState() => _SurnameState();
}

class _SurnameState extends State<Surname> {

  var _surname = "Doe";
  final GlobalKey<FormState> surnameKey = GlobalKey<FormState>();
  TextEditingController? surnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
          leading: Text(
            "Soyisim",
            style: TextStyle(color: Colors.grey),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(_surname),
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
                            child: Center(child: Text("SOY İSİM",style: TextStyle(

                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),),),
                          ),
                          Form(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            key: surnameKey,
                            child: TextFormField(

                              cursorColor: Colors.black,
                              controller: surnameController,
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
                                    surnameController!.clear();
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: 'Soyisim ',
                              ),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Bu alanı boş bırakamazsınız!';
                                } else if (value.length < 3) {
                                  return "Yetersiz Karakter";
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
                                    if (surnameKey.currentState!.validate()) {
                                      setState(() {
                                        surnameKey.currentState!.save();
                                        _surname = surnameController!.text;
                                        _surname.toString();
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
}
