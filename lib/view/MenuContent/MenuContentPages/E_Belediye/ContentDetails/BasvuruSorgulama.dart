import 'package:flutter/material.dart';

class BasvuruSorgulama extends StatelessWidget {
  const BasvuruSorgulama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basvuru Sorgulama"),),
      body: Container(child: Center(child: Text("Basvuru Sorgulama Sayfası"),),),
    );
  }
}
