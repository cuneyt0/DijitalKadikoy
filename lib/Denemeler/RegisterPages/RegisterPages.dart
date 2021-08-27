import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(flex: 1,child: Text("1"),),
              Expanded(
                
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white38,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      hintText: 'E-Mail ',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white38,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      hintText: 'E-Mail ',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white38,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      hintText: 'E-Mail ',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white38,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      hintText: 'E-Mail ',
                    ),
                  ),
                ),
              ),
              Expanded(child: ElevatedButton(
                  child: Text("Giriş Yap",style: TextStyle(color: Colors.black),),
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,

                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(30)),
                      padding:
                      EdgeInsets.all(20) //content padding inside button
                  )),),

            ],
          ),
        ),
      ),
    );
  }
}
