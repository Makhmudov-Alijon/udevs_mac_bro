import 'package:get/get.dart';

import 'category_page_logic.dart';

class Category_pageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Category_pageLogic());
  }
}
