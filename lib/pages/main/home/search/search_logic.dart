
import 'package:get/get.dart';
import 'package:udevs_mac_bro/model/SearchModel.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';


class SearchLogic extends GetxController {
  RxBool loading = RxBool(false);
  final RestClient restClient = Get.find();
  RxList<Products> allProductList = RxList();
  var query = (Get.arguments);

  @override
  void onReady() async {
    super.onReady();
    loading(true);
    SearchModel allProductModel = await restClient.getSearch(query);
    allProductList(allProductModel.products);
    loading(false);
  }
}
