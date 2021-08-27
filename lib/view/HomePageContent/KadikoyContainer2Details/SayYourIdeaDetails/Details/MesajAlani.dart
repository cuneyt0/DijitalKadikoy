import 'package:dkadikoy/controller/SayYourIdeaController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Message extends StatelessWidget {
  SayYourIdeaController controller = Get.put(SayYourIdeaController());
  TextEditingController textController = TextEditingController();
  final GlobalKey<FormState> MessageKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return TextField(
      //key: MessageKey,
      keyboardType:  TextInputType.text,
      autofocus:true,
      maxLength: 1000,
      expands: true,

      maxLines:null,
      textAlignVertical:TextAlignVertical.center ,

      controller: textController,
     onChanged: (_){

       controller.Message.value=textController.text;
     },
      onSubmitted: (value){
        textController.text=value;

      },


      maxLengthEnforcement :MaxLengthEnforcement.truncateAfterCompositionEnds,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Mesajınızı buraya yazınız...",

      helperText: textController.text,
        hintStyle: TextStyle(),
        prefixIcon: Icon(Icons.messenger_outline),
      ),
    );
  }
}
