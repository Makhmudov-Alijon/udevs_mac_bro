import 'package:get/get.dart';

import 'category_child_item_logic.dart';

class Category_child_itemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Category_child_itemLogic());
  }
}
