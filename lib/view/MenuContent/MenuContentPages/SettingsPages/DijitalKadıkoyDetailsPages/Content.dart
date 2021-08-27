import 'package:flutter/material.dart';

class Content extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String? title="İletişim";
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Container(child: Center(child: Text("İletişim")),),
    );
  }
}
