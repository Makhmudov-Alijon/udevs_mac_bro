import 'package:get/get.dart';


import 'package:udevs_mac_bro/model/new_exam/new_exam_map.dart';
import 'package:udevs_mac_bro/model/new_exam/new_product_list_item.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';



class New_ProductLogic extends GetxController {

  RxBool loading = RxBool(false);
  final RestClient restClient=Get.find();
  RxList<NewExamProductList> allProductList=RxList();

  @override
  void onReady()async {
    super.onReady();
    loading(true);
    NewExamMap allProductModel=await restClient.getNewProduct('ru');
    loading(false);
    allProductList(allProductModel.featuredList!.products );
  }
}
