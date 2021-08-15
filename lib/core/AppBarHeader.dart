import 'package:flutter/material.dart';
 import 'package:dkadikoy/controller/splashController.dart';
class MyAppbar extends StatefulWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => Size.square(55);

  const MyAppbar({
    Key? key,
    required this.sContoller,

  }) : super(key: key);

  final splashController sContoller;


  @override
  _MyAppbarState createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Size get preferredSize =>  Size.square(55);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            " ${widget.sContoller.ListTextName[0]}\n ${widget.sContoller.ListTextName[1]}",
            style: TextStyle(
                fontFamily: "PTSerif1", fontSize: 18, color: Colors.black),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${widget.sContoller.UserName[0]}\n Hello",
                  style: TextStyle(
                      fontFamily: "PTSerif1",
                      fontSize: 15,
                      color: Colors.black),
                ),
              ),

              CircleAvatar(

                maxRadius: MediaQuery.of(context).size.height*0.03,
                backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C4D03AQFmczNhLv7Xmw/profile-displayphoto-shrink_200_200/0/1611608032504?e=1632960000&v=beta&t=XmOjZ9jaWHhRx34gGZhz0j2ZZtw2SofDZRhFUQxcz1Y",
                ),
              ),

            ],
          )
        ],
      ),
      backgroundColor: Colors.white,

    );
  }


}
/*
* Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "${widget.sContoller.UserName[0]}",
                    style: TextStyle(
                        fontFamily: "PTSerif1",
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  Text(
                    "Hello",
                    style: TextStyle(
                        fontFamily: "PTSerif1",
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ],
              ),
            ),

            CircleAvatar(

              maxRadius: 30,
              backgroundImage: NetworkImage(
                "https://media-exp1.licdn.com/dms/image/C4D03AQFmczNhLv7Xmw/profile-displayphoto-shrink_200_200/0/1611608032504?e=1632960000&v=beta&t=XmOjZ9jaWHhRx34gGZhz0j2ZZtw2SofDZRhFUQxcz1Y",
              ),
            ),

          ],
        ),
*
*
* */