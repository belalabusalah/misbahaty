import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int counter = 5;
    String AlTasbeha = "استغفر الله الذي لا اله الا هو الحي القيوم";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: PopupMenuButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.black38, width: 3),
          ),
          icon: Icon(Icons.swap_horiz),

          onSelected: (onSelected) {
            setState(() {
              if (onSelected == "0") {
                AlTasbeha = "استغفر الله الذي لا اله الا هو الحي القيوم";
              } else if (onSelected == "1") {
                AlTasbeha = "الحمدالله كما يمبغي لجلال وجهك وعضيم سلطانك";
              } else if (onSelected == 2) {
                AlTasbeha =
                    "سبحان الله وبحمده عدد خلقه ورضى نفسه وزنة عرشه ومداد كلماته ";
              }
            });
          },
          onOpened: () {
            print('onOpened');
          },

          // initialValue: "flutter",
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: "0",
                child: Text(
                  "استغفر الله",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              PopupMenuItem(
                value: 1,
                child: Text("الحمدلله", style: TextStyle(color: Colors.red)),
              ),
              PopupMenuItem(
                value: 2,
                child: Text(
                  "سبحان الله",
                  style: TextStyle(color: Colors.amber),
                ),
              ),
            ];
          },
        ),
        title: Row(
          children: [
            Text("مسبحتي"),
           Icon(Icons.device_thermostat_sharp),
          ],
        ),
        centerTitle: true,

      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage("image/b.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          spacing: 32,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 55),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text("الذكر الحالي"),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black12),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "$AlTasbeha",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.w600,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "نور لقلبك وضياء ليومك",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black38,
                        ),
                      ),
                      Icon(Icons.star, color: Colors.redAccent, size: 30),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                counter += 1;
                setState(() {
                  print(counter);
                });
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 40),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.green.shade600,
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(width: 10, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade400,
                      offset: Offset(1, 1),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.green.shade400,
                      offset: Offset(-1, 1),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.green.shade50,
                      offset: Offset(2, -2),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.green.shade50,
                      offset: Offset(-2, -2),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 16,
                  children: [
                    Text(
                      "$counter",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "تسبيحة",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              label: Text("اعادة تحميل"),
              icon: Icon(Icons.refresh),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
