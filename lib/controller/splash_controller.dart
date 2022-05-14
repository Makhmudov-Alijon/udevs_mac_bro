import 'dart:async';



import 'package:get/get.dart';

import '../routes/app_routes.dart';


class SplashController extends GetxController{
  time(context){

    Timer(const Duration(seconds: 1), () =>Get.offAllNamed(AppRoutes.main) );
  update();
  }

}
