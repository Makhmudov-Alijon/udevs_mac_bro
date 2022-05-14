
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';
import 'package:udevs_mac_bro/model/banner_model/banner_model.dart';

import 'banner_item.dart';
import 'banner_page_logic.dart';
final logic=Get.put(BannerPageLogic());
HomeController controller=Get.put(HomeController());
allBannerList(){
  RxList<BannerModel> allProduct = logic.allProductList;

  List<Widget> allProductWidget = [];

  for (int i = 0; i < allProduct.length; i++) {
    allProductWidget.add(BannerItem(allModel: allProduct[i],));
  }
  controller.b.value=allProductWidget.length;
  return allProductWidget;
}