import 'package:dkadikoy/controller/EBelediyeController.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/E_Belediye/ContentDetails/BasvuruSorgulama.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/E_Belediye/ContentDetails/BorcSorgulamaPages.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/E_Belediye/ContentDetails/EBelgeSorugulama.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/E_Belediye/ContentDetails/EMakbuzSorgulama.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'EBelediyeAppBar.dart';

class EBelediye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EBelediyeController eContoller = Get.put(EBelediyeController());
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80), child: EBelediyeAppBar()),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Obx(
                      () => Text(
                        eContoller.LisviewContent[index],
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                    onTap: (){
                      if(index==0){
                        Get.to(()=>BorcSorgulama());
                      }
                      if(index==1){
                        Get.to(()=>BasvuruSorgulama());
                      }
                      if(index==2){
                        Get.to(()=>EBelgeSorgulama());
                      }
                      if(index==3){
                        Get.to(()=>EMakbuzSorgulama());
                      }
                    },
                  ),
                  Divider(),
                ],
              );
            }),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("123"),
    );
  }
}
