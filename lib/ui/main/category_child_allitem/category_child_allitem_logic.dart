import 'package:get/get.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';
import 'package:udevs_mac_bro/model/category_model/category_child_item.dart';
import 'package:udevs_mac_bro/model/category_model/category_chils.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';

class Category_child_allitemLogic extends GetxController {
  RxBool loading = RxBool(false);
  final RestClient restClient = Get.find();
  RxList<ProductVariants> category = RxList();
  HomeController controller=Get.put(HomeController());
  @override
  void onReady() async {
    super.onReady();

    loading(true);
    CategoryChils listModel = await restClient.getCategoryChildAllItem(controller.id.value.toString(),);
    loading(false);
    category(listModel.productVariants);

  }
}
