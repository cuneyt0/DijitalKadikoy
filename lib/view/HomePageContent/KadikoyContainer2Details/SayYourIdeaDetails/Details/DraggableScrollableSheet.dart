import 'package:dkadikoy/controller/SayYourIdeaController.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyContainer2Details/SayYourIdeaDetails/Details/SayYourIdeaButtonContent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DraggableSheet extends StatefulWidget {
   DraggableSheet({
    required this.Photo,
    required this.Title,
    required this.subTitle,
    required this.Content,
});
  var Photo, Title, subTitle, Content;

  @override
  _DraggableSheetState createState() => _DraggableSheetState();
}

class _DraggableSheetState extends State<DraggableSheet> {
  SayYourIdeaController controller = Get.put(SayYourIdeaController());
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: true,
      builder:
          (BuildContext buildContext, ScrollController scrollController) {
        return Container(
          child: SingleChildScrollView(

              physics: ScrollPhysics(),
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        label: Text('FİKRİNİ SÖYLE'),
                        style: ElevatedButton.styleFrom(
                          shape:RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),),
                        ),
                        icon: Icon(Icons.send),
                        onPressed: () {
                          print('Pressed');
                          controller.validate.value=true;
                          //SayYourIdeaButtonContent();
                        },
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 10, right: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${widget.Title}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      widget.subTitle,
                                      style:
                                      TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.verified,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(widget.Content ,style:
                            TextStyle(color: Colors.grey),)
                        ),

                        Container(
                          color: Colors.grey.shade200,
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0,top: 15),
                          child: Text("FOTOGRAF GALERİSİ",style:
                          TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),

                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: widget.Photo,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(18),
                                  ),
                                  height:
                                  MediaQuery.of(context).size.height *
                                      .25,
                                  width:
                                  MediaQuery.of(context).size.width *
                                      .40,
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 5.0),
                                  child: Container(
                                    child: widget.Photo,
                                    color: Colors.red,
                                    height: MediaQuery.of(context)
                                        .size
                                        .height *
                                        .25,
                                    width: MediaQuery.of(context)
                                        .size
                                        .width *
                                        .40,
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 5.0),
                                  child: Container(
                                    child: widget.Photo,
                                    color: Colors.red,
                                    height: MediaQuery.of(context)
                                        .size
                                        .height *
                                        .25,
                                    width: MediaQuery.of(context)
                                        .size
                                        .width *
                                        .40,
                                  ),
                                ),

                              ],

                            ),
                          ),
                        ),
                        SizedBox(
                          height:30,
                        ),
                      ],
                    ),
                  )
                ],
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
      maxChildSize: 0.9,
    );
  }
}
