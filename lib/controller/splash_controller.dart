import 'dart:async';




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/routes/app_routes.dart';





class SplashController extends GetxController{
  Box box=Hive.box('token');
  time(context){
    Timer(const Duration(seconds: 1), () {
      Get.offAllNamed(AppRoutes.mainPageScreen);

    });
  update();
  }

}
