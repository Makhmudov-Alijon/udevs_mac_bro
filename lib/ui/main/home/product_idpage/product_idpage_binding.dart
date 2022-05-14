import 'package:get/get.dart';

import 'product_idpage_logic.dart';

class ProductIdpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductIdpageLogic());
  }
}
