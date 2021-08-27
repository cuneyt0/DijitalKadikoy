import 'package:flutter/material.dart';

class DijitalKadikoyHakkinda extends StatelessWidget {
  const DijitalKadikoyHakkinda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? title="DijitalKadikoyHakkinda";
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Container(child: Center(child: Text("DijitalKadikoyHakkinda")),),
    );
  }
}
