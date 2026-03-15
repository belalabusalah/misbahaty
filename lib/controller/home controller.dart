

import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 5;
  String AlTasbeha = "استغفر الله الذي لا اله الا هو الحي القيوم";

  void dd (onSelected){
    if (onSelected == "0") {
      AlTasbeha = "استغفر الله الذي لا اله الا هو الحي القيوم";
    } else if (onSelected == "1") {
      AlTasbeha = "الحمدالله كما يمبغي لجلال وجهك وعضيم سلطانك";
    } else if (onSelected == "2") {
      AlTasbeha =
      "سبحان الله وبحمده عدد خلقه ورضى نفسه وزنة عرشه ومداد كلماته ";
    }

    update();
  }

  void increment (){
    counter ++;
    update();
  }

  void resetCounter (){

    counter =0;
    update();
  }


}
