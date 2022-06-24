import 'package:get/get.dart';

import 'no_connection_logic.dart';

class NoConnectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoConnectionLogic());
  }
}
