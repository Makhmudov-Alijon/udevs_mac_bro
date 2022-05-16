import 'package:get/get.dart';
import 'package:udevs_mac_bro/model/banner_model/banner_model.dart';
import 'package:udevs_mac_bro/repository/repository/home_repository.dart';

import '../model/banner_model/banners_model.dart';
late final HomeRepostry? repository;
class ExamHomeController extends GetxController  with GetSingleTickerProviderStateMixin{

  List<BannerModel> _banners = [];
  @override
  void onInit() {
    getBanners();
    super.onInit();
  }
  Future<void> getBanners() async {

    final result = await repository!.getBanners();

    if (result is BannersModel) {
      _banners = result.banners;

      update();
    } else {
      Get.snackbar('error'.tr, result.toString());
    }

  }
  List<BannerModel> get banners => _banners;
}