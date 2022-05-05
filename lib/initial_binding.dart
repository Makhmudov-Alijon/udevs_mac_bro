import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';
import 'package:udevs_mac_bro/ui/main/banner_page/banner_page_logic.dart';
import 'package:udevs_mac_bro/ui/main/category_page/category_page_logic.dart';




class InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(RestClient(Dio()));
    Get.put(Category_pageLogic());

    Get.put(BannerPageLogic());
  }

}