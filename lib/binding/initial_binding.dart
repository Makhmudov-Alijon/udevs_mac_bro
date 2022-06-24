
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/contact/connection.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';




class InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(RestClient(Dio()));
    // Get.put<ConnectionService>(ConnectionService(), permanent: true);
  }

}