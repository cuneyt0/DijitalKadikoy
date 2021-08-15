import 'package:flutter/material.dart';

class KadikoyCardContainer extends StatelessWidget {
  const KadikoyCardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
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
              height: 150,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          print("odeme yap tıklanıldı");
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Column(
                          children: [
                            Icon(
                              Icons.account_balance_wallet_outlined,
                              color: Colors.black,
                            ),
                            Center(
                              child: Text(
                                "Ödeme Yap",
                                style: TextStyle(
                                    fontFamily: "PTSerif",
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white, ),
                        onPressed: () {
                          print("yükle tıklanıldı tıklanıldı");
                        },
                        child: Column(
                          children: [
                            Icon(Icons.credit_card,color: Colors.black,),
                            Center(
                              child: Text("Yükle",style: TextStyle(
                                  fontFamily: "PTSerif",
                                  fontSize: 15,
                                  color: Colors.black),),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
