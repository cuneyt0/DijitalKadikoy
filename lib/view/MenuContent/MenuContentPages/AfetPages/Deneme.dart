import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Denemeler extends StatefulWidget {
  const Denemeler({Key? key}) : super(key: key);

  @override
  _DenemelerState createState() => _DenemelerState();
}

var notification = [
  CheckBoxState(title: "İçecek Su"),
  CheckBoxState(title: "Ekmek"),
];

class _DenemelerState extends State<Denemeler> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...notification.map(buidSingleCheckBox).toList(),
        ...notification.map(buidSingleCheckBox).toList(),
      ],
    );
  }

  Widget buidSingleCheckBox(CheckBoxState checkBoxState) => CheckboxListTile(
      value: checkBoxState.value,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(checkBoxState.title.toString()),
      ),
      onChanged: (value) {
        setState(() {
          checkBoxState.value = value!;
        });
      });
}

class CheckBoxState {
  String? title;
  bool? value;

  CheckBoxState({required this.title, this.value = false});
}








