import 'package:get/get.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';


import 'package:udevs_mac_bro/model/product_model/product_model.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';

class ProductIdpageLogic extends GetxController {
  HomeController controller=Get.put(HomeController());
  RxBool loading = RxBool(false);
  final RestClient restClient=Get.find();
  RxList<Properties> allProductList=RxList();
  RxList<Variants> allVariantList=RxList();
  final String children = Get.arguments ?? [];
  @override
  void onReady()async {
    super.onReady();
    loading(true);
    ProductModel allProductModel=await restClient.getProductId(children);
    loading(false);
    allProductList(allProductModel.product!.properties);
    allVariantList(allProductModel.product!.variants);
  }
}
