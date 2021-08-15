import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';


class BottomBar extends StatefulWidget {
  BottomBar({required this.zoomdrawerController}) ;
  final   zoomdrawerController;
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {


  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 50,
      color:Colors.lightBlue ,
      backgroundColor: Colors.white,
      buttonBackgroundColor: Colors.lightBlue,
      animationDuration: Duration(milliseconds: 200 ),
      index: 0,
      items: [
        Icon(
          Icons.home_outlined,
          size: 25,
          color: Colors.white,
        ),
        Icon(
          Icons.mail_outline_sharp,
          size: 25,
          color: Colors.white,
        ),
        Icon(
          Icons.credit_card,
          size: 25,
          color: Colors.white,
        ),
        Icon(
          Icons.print_outlined,
          size: 25,
          color: Colors.white,
        ),

        Icon(
          Icons.qr_code,
          size: 25,
          color: Colors.white,
        ),
        Icon(
          Icons.apps_outlined,
          size: 25,
          color: Colors.white,
        ),

      ],
      onTap: (index){

        print("Current index: ${index}");
        if(index==5){
         Menu();
        }
      },
    );
  }



    Future? Menu()async {
      print("BottomNavigatordasın");
      return await widget.zoomdrawerController.toggle!();



  }
}
