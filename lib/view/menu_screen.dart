import 'package:dkadikoy/controller/splashController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final splashController sContoller = Get.put(splashController());

    return Scaffold(
      backgroundColor: Colors.blue[200]!,
      body: SafeArea(
        child: Column(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 40, 0, 0),
                      child: Text(
                        "${sContoller.UserName[0]}\nWelcome!",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "PTSerif"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage(
                          "https://media-exp1.licdn.com/dms/image/C4D03AQFmczNhLv7Xmw/profile-displayphoto-shrink_200_200/0/1611608032504?e=1632960000&v=beta&t=XmOjZ9jaWHhRx34gGZhz0j2ZZtw2SofDZRhFUQxcz1Y",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
            Expanded(
              child: ListView.builder(
                itemCount: sContoller.DrawerContent.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    color: Colors.blue.shade50,
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            print(
                                "${sContoller.DrawerContent[index]} tıklanıldı");
                          },
                          trailing: Obx(() => sContoller.DrawerIcon[index]),
                          title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Obx(
                                () => Text(
                                  sContoller.DrawerContent[index],
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                          color: Colors.black,
                                          fontFamily: "PTSerif"),
                                ),
                              )),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  onPressed: () {
                    print("Arama yap tıklanıldı");
                  },
                  child: Text("Arama yap",style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(elevation: 8,alignment: Alignment.center)),
            ),
          ],
        ),
      ),
    );
  }
}

/*


ListView.builder(itemCount: sContoller.DrawerContent.length,itemBuilder: (context,index){
                  return ListTile(
                    title: Text(sContoller.DrawerContent[index]),
                  );
                },)




* Column(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Cuneyt"),
                    ),
                    CircleAvatar(

                      backgroundImage: NetworkImage(
                        "https://media-exp1.licdn.com/dms/image/C4D03AQFmczNhLv7Xmw/profile-displayphoto-shrink_200_200/0/1611608032504?e=1632960000&v=beta&t=XmOjZ9jaWHhRx34gGZhz0j2ZZtw2SofDZRhFUQxcz1Y",
                      ),
                    ),

                  ],
                ),
              ],
            )),
            Divider(
              thickness: 2,
              color: Colors.white24,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("HomePage")
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.white24,
            ),
            //Spacer(),
            //
            Divider(
              thickness: 2,
              color: Colors.white24,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Map")
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.white24,
            ),
          ],
        ),
*
*
*
* */
