import 'package:get/get.dart';

class BottomBarController extends GetxController {
  RxInt tabIndex = RxInt(0);

  void changeTabIndex(int index) {
    tabIndex(index);
    update();
  }
}
