import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dkadikoy/controller/SayYourIdeaController.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2Details/ConvexAppBarr.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2Details/SayYourIdeaDetails/Details.dart';
import 'package:dkadikoy/view/MenuContent/menu_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SayYourIdea extends StatelessWidget {
  SayYourIdeaController controller = Get.put(SayYourIdeaController());

  @override
  Widget build(BuildContext context) {
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
                  Get.to(() => Details(
                        Photo: controller.Iconn[index],
                        subTitle: controller.SubTitle[index],
                        Title: controller.Title[index],
                        Content: controller.Content[index],
                      ));
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      "82",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Icon(
                                      Icons.photo,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
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
/*
* DraggableScrollableSheet(
      expand: true,
      builder: (BuildContext buildContext, ScrollController scrollController) {
        return Container(
          child: SingleChildScrollView(
              physics: ScrollPhysics(),
              controller: scrollController,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                Obx(
                                  () => CircleAvatar(
                                      radius: 26,
                                      backgroundColor: Color(0xffFDCF09),
                                      child: profContoller.selectedImagePath
                                                      .value !=
                                                  '' &&
                                              profContoller.issave.value == true
                                          ? CircleAvatar(
                                              radius: 70,
                                              backgroundImage: FileImage(
                                                File(
                                                  (profContoller
                                                      .cropImagePath.value),
                                                ),
                                              ),
                                            )
                                          : CircleAvatar(
                                              radius: 70,
                                              backgroundImage: AssetImage(
                                                  "images/cuneyt.jpg"))),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Obx(
                                        () => Text(
                                          "${Contoller.name.value}",
                                          style: TextStyle(
                                              fontFamily: "PTSerif1",
                                              fontSize: 15,
                                              color: Colors.deepPurple),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,),
                                      child: Obx(
                                        () => Text(
                                          "${Contoller.Email.value}",
                                          style: TextStyle(
                                              fontFamily: "PTSerif1",
                                              fontSize: 12,
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: ElevatedButton(
                                  child: Text('GÖNDER'),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0),
                                    ),
                                  ),

                                  onPressed: () {
                                    print('Pressed');
                                    controller.validate.value = true;
                                    //SayYourIdeaButtonContent();
                                  },
                                )),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    Expanded(child: Text("123"),)
                  ],
                ),
              )),
        );
      },
      // minChildSize<=initialChildSize
      // initial size of the sheet when app is opened.
      // default value 0.5
      initialChildSize: .50,
      //will take 30% of screen space
      //minimum size to which sheet can be dropped down.
      // default value .25
      minChildSize: .48,

      //max size to which  sheet can be dragged up
      //default value 1.0
      maxChildSize: 0.80,
    );
*
*
* */