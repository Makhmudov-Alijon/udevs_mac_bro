
import 'package:flutter/material.dart';
import 'package:udevs_mac_bro/controller/login_page_controller.dart';
import 'package:get/get.dart';
LoginController controller=Get.put(LoginController());
class AppConstants {

  AppConstants._();

  // static const baseUrl = 'https://test.customer.api.delever.uz/v1/'; //test

  static  String baseUrl = '';


  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}