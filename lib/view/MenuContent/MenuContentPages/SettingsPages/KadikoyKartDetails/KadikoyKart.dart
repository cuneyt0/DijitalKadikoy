import 'package:flutter/material.dart';

class CardSetting extends StatelessWidget {
  const CardSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? title="KadıköyKart";
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Container(child: Center(child: Text("KadıköyKart")),),
    );
  }
}
