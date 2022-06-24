import 'package:get/get.dart';

import 'banner_page_logic.dart';

class BannerPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BannerPageLogic());
  }
}
