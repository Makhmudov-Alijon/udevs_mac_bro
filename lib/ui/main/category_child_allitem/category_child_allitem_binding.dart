import 'package:get/get.dart';

import 'category_child_allitem_logic.dart';

class Category_child_allitemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Category_child_allitemLogic());
  }
}
