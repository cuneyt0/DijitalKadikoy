
import 'package:flutter/material.dart';


class SearchBarUI extends StatelessWidget  {
  TextEditingController TextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Expanded(
            child: TextField(
              controller: TextFieldController,
              decoration: InputDecoration(
                  hintText: "Arama",
                 suffixIcon: Icon(Icons.search),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22))),
            ),
          ),
        ),
      ],
    );
  }
}

