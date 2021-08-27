import 'package:dkadikoy/view/HomePageContent/KadikoyKartContainerDetails/payMoney.dart';
import 'package:dkadikoy/view/HomePageContent/KadikoyKartContainerDetails/uploadMoney.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KadikoyCardContainer extends StatelessWidget {
  const KadikoyCardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    gradient:LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue.shade300,
                        Colors.blue.shade500,

                      ],
                    ) ,
                    //color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Kadıköy Kart",
                          style: TextStyle(
                              fontFamily: "PTSerif",
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Text(
                          "John Doe",
                          style: TextStyle(
                              fontFamily: "PTSerif",
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Text(
                          '235.00 £',
                          style: TextStyle(
                              fontFamily: "PTSerif",
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(15),
                gradient:LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue.shade300,
                    Colors.blue.shade500,

                  ],
                ) ,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top:10,bottom: 5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white,shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),),
                        onPressed: () {
                          print("ÖdemeYap tıklanıldı tıklanıldı");
                          Get.to(()=>PayMoney());
                        },
                        child: Column(
                          children: [
                            Icon(Icons.account_balance_wallet_outlined,color: Colors.black,size: 25,),
                            Center(
                              child: Text("Odeme yap",style: TextStyle(
                                  fontFamily: "PTSerif",
                                  fontSize: 15,
                                  color: Colors.black),),
                            ),
                          ],
                        )),
                  ),),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top:5,bottom: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white,shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),),
                        onPressed: () {
                          print("yükle tıklanıldı tıklanıldı");
                          Get.to(()=>UploadMoney());
                        },
                        child: Column(
                          children: [
                            Icon(Icons.credit_card,color: Colors.black,size: 25,),
                            Center(
                              child: Text("Yükle",style: TextStyle(
                                  fontFamily: "PTSerif",
                                  fontSize: 15,
                                  color: Colors.black),),
                            ),
                          ],
                        )),
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
* 
* 
* 
* 
* 
* 
* 
* */