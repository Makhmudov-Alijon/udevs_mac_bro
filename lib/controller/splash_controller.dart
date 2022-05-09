import 'dart:async';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';
import '../ui/bottom_navigation_bar_item/main_page.dart';

class SplashController extends GetxController{
  time(context){

    Timer(const Duration(seconds: 1), () =>Get.offAllNamed(AppRoutes.main) );
  update();
  }

}
