import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/banner_model/banner_model.dart';
import 'banner_item.dart';
import 'banner_page_logic.dart';
final logic=Get.put(BannerPageLogic());

allBannerList(){
  RxList<BannerModel> allProduct = logic.allProductList;

  List<Widget> allProductWidget = [];

  for (int i = 0; i < allProduct.length; i++) {
    allProductWidget.add(allProductItem(allProduct[i],));
  }
  return allProductWidget;
}