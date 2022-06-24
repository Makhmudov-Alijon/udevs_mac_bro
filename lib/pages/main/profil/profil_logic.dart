import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/model/user_create/UserMe.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';


class ProfilLogic extends GetxController {
  final RestClient restClient=Get.find();
  Box box = Hive.box('token');

  List<UserMe> user=[];
  @override
  void onReady()async {
    super.onReady();
    var token=box.get('key');
    UserMe userMe=await restClient.getUser(token, '7d4a4c38-dd84-4902-b744-0488b80a4c01') ;
    user.add(userMe);
  }

}