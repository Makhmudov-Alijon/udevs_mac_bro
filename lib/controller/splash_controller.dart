import 'dart:async';





import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/pages/main/main/main_exam.dart';






class SplashController extends GetxController{
  Box box=Hive.box('token');
  time(context){
    Timer(const Duration(seconds: 1), () {
      Get.offAllNamed(MainPageScreen.route);

    });
  update();
  }

}
