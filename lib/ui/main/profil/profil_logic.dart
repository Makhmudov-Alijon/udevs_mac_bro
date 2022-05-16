import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/model/user_create/UserMe.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';
import 'package:udevs_mac_bro/ui/login_page/otp_page_logic.dart';

class ProfilLogic extends GetxController {
  final RestClient restClient=Get.find();
  Box box = Hive.box('product');

  @override
  void onReady()async {
    super.onReady();
    var token=box.get('key');
    UserMe user=await restClient.getUserMe('Bearer ${token}','7d4a4c38-dd84-4902-b744-0488b80a4c03');

  }

}