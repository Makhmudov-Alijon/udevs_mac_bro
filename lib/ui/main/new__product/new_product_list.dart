import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:udevs_mac_bro/model/new_exam/new_exam_map.dart';
import 'package:udevs_mac_bro/model/new_exam/new_product_list_item.dart';


import 'package:udevs_mac_bro/ui/main/new__product/new_product_item.dart';

import 'new__product_logic.dart';

// class NewProductList{
//   final Box productBox = Hive.box('product');
//   final logic = Get.put(New_ProductLogic());
//   var randomId = getRandomString(200);
//   // final banneritem=BannerItem();
//   final newproduct=NewProductItem();
//
//   allProductList(){
//     RxList<NewExamProductList> allProduct = logic.allProductList;
//
//     List<Widget> allProductWidget = [];
//
//     for (int i = 0; i < allProduct.length; i++) {
//       allProductWidget.add(newproduct.allProductItem(allProduct[i],));
//     }
//     return allProductWidget;
//   }
//
// }
final Box productBox = Hive.box('product');
final logic = Get.put(New_ProductLogic());
// var randomId = getRandomString(200);
// final banneritem=BannerItem();
// final newproduct=NewProductItem();

allNewProductList(){
  RxList<NewExamProductList> allProduct = logic.allProductList;

  List<Widget> allProductWidget = [];

  for (int i = 0; i < allProduct.length; i++) {
    allProductWidget.add(allNewProductItem(allProduct[i],));
  }
  return allProductWidget;
}