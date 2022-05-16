import 'dart:async';




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/routes/app_routes.dart';





class SplashController extends GetxController{
  Box box=Hive.box('product');
  time(context){
    Timer(const Duration(seconds: 1), () {
      if(box.isEmpty){
        Get.offAllNamed(AppRoutes.internetConnection);
      }else{
        Get.offAllNamed(AppRoutes.mainPageScreen);
      }

    });
  update();
  }

}
