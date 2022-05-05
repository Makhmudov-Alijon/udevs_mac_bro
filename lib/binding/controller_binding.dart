import 'package:get/get.dart';
import 'package:udevs_mac_bro/controller/bottombar_controller.dart';
import 'package:udevs_mac_bro/ui/main/category_page/category_page_logic.dart';


import '../ui/main/banner_page/banner_page_logic.dart';
class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomBArController(), fenix: true);

  }
}