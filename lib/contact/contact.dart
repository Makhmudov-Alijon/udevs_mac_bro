
import 'package:udevs_mac_bro/controller/login_page_controller.dart';
import 'package:get/get.dart';
LoginController controller=Get.put(LoginController());
class AppConstants {

  AppConstants._();

  // static const baseUrl = 'https://test.customer.api.delever.uz/v1/'; //test

  static  String baseUrl = controller.number.value
      ? 'https://test.customer.api.delever.uz/v1/'
      : 'https://customer.api.delever.uz/v1/';



}