import 'package:get/get.dart';
import 'package:udevs_mac_bro/controller/bottombar_controller.dart';




class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomBarController(), fenix: true);

  }
}