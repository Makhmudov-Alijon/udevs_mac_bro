import 'package:get/get.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';
import 'package:udevs_mac_bro/controller/product_controller.dart';


import 'package:udevs_mac_bro/model/product_model/product_model.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/argumnet_product.dart';


class ProductIdpageLogic extends GetxController {
  HomeController controller=Get.put(HomeController());
  ProductController productController=Get.put(ProductController());
  RxBool loading = RxBool(false);
  final RestClient restClient=Get.find();
  RxList<Properties> allProductList=RxList();
  RxList<Variants> allVariantList=RxList();
  int index=0;
  final ProductArgumnt children = Get.arguments ?? [];
  @override
  void onReady()async {
    super.onReady();
    loading(true);
    ProductModel allProductModel=await restClient.getProductId(children.id);
    loading(false);

    allProductList(allProductModel.product!.properties);
    allVariantList(allProductModel.product!.variants);


    // productController.name.value=allProductModel.product!.properties!.first.value!.first.value.toString().toLowerCase();

  }
}
