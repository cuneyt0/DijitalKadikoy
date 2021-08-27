import 'package:dkadikoy/controller/afetController.dart';
import 'package:dkadikoy/view/HomePageContent/HomePage.dart';
import 'package:dkadikoy/view/MenuContent/MenuContentPages/AfetPages/AfetCantamDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AfetListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AfetController controller = Get.put(AfetController());
    return ListView.builder(
        physics: ScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,children: [
                    Text(controller.CardTitle[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    InkWell(
                      onTap: (){
                        print("menu iconu Tıklanıldı");
                      },
                      child: Icon(Icons.menu,size: 15,),
                    )
                  ],),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(right: 50.0),
                          child: Text(controller.CardSubTitle[index]),
                        )),
                        InkWell(
                          onTap: (){
                            print("edit iconu Tıklanıldı");
                            if(index==0)
                              {
                                Get.to(()=>AfetCantam());
                              }
                            //Duzenle

                          },
                          child: Icon(Icons.edit_outlined,size: 28,),
                        )
                      ],),
                  )
                ],
              ),
            )
          );
        });
  }
}
