import 'package:get/get.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';
import 'package:udevs_mac_bro/model/category_model/category_child_item.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';

class Category_child_itemLogic extends GetxController {

  RxBool loading = RxBool(false);
  final RestClient restClient = Get.find();
  RxList<Products> category = RxList();
  HomeController _controller=Get.put(HomeController());
  @override
  void onReady() async {
    super.onReady();

    loading(true);
    CategoryChildItem listModel = await restClient.getCategoryChildItem(_controller.id.value.toString());
    loading(false);
    category(listModel.products);

  }
}
