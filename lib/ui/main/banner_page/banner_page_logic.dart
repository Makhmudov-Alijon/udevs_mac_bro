import 'package:get/get.dart';


import '../../../model/banner_model/banner_model.dart';
import '../../../model/banner_model/banners_model.dart';
import '../../../repository/api_repository/api_repository.dart';

class BannerPageLogic extends GetxController {
  RxBool loading=RxBool(false);
  final RestClient restClient=Get.find();
  RxList<BannerModel> allProductList=RxList();

  @override
  void onReady()async {
    super.onReady();
    loading(true);
    BannersModel allProductModel=(await restClient.getBanner()) ;
    loading(false);
    allProductList(allProductModel.banners);
  }
}
