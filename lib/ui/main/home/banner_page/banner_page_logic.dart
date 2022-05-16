import 'package:get/get.dart';
import 'package:udevs_mac_bro/model/banner_model/banner_model.dart';
import 'package:udevs_mac_bro/model/banner_model/banners_model.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';
import 'package:udevs_mac_bro/repository/repository/home_repository.dart';



class BannerPageLogic extends GetxController {
  RxBool loading=RxBool(false);
  final RestClient restClient=Get.find();
  RxList<BannerModel> allProductList=RxList();
  late final HomeRepostry? repository;
  @override
  void onReady()async {
    super.onReady();
    loading(true);
    BannersModel allProductModel=(await restClient.getBanner()) ;
    loading(false);
    allProductList(allProductModel.banners);
  }
}
