import 'package:get/get.dart';



import 'package:udevs_mac_bro/model/product_model/product_model.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';

import 'argumnet_product.dart';



class ProductIdpageLogic extends GetxController {
  RxBool loading = RxBool(false);
  final RestClient restClient=Get.find();
  ProductModel allProductList=ProductModel();
  final ProductArgumnt children = Get.arguments ?? [];
  @override
  void onReady()async {
    super.onReady();
    loading(true);
    ProductModel allProductModel=await restClient.getProductId(children.id);
    loading(false);
    allProductList=(allProductModel as ProductModel);

  }
}
