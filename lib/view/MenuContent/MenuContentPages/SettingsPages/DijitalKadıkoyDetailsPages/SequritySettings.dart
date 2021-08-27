import 'package:flutter/material.dart';

class SecuritySettings extends StatelessWidget {
  const SecuritySettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? title="GizlilikAyarları";
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Container(child: Center(child: Text("GizlilikAyarları")),),
    );
  }
}
