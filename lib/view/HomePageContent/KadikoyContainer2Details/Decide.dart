import 'package:dkadikoy/controller/SayYourIdeaController.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2Details/ConvexAppBarr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Decide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SayYourIdeaController controller = Get.put(SayYourIdeaController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text("Fikrini Söyle", style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        bottomNavigationBar: ConvexAppBarr(),
        resizeToAvoidBottomInset: false,
        // key: _drawerKey,

        body: GridView.builder(
            itemCount: controller.DrawerIcon.length,
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.7),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  print("tıklanıldı");
                },
                child: Card(
                  elevation: 0,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          AspectRatio(
                            aspectRatio: 18.0 / 19.0,
                            child: controller.DrawerIcon[index],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black45,
                                    border: Border.all(
                                      color: Colors.black45,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          "82",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Icon(
                                          Icons.photo,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Obx(()=>TextButton(onPressed: (){
                                  print("Tıklanıldı");
                                  controller.change();
                                },child: Icon(Icons.add_outlined,size: 40,color: Colors.white,),style:TextButton.styleFrom(shape: CircleBorder(),backgroundColor:controller.isControll==false?Colors.red:Colors.green)),),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 9.0, 0.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              controller.Title[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 8.0),
                            Text(controller.SubTitle[index]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
