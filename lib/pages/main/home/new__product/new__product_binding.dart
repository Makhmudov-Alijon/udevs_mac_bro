import 'package:get/get.dart';

import 'new__product_logic.dart';

class New_ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => New_ProductLogic());
  }
}
