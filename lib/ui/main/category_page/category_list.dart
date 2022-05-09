
import 'package:udevs_mac_bro/controller/home_controller.dart';
import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';
import 'package:udevs_mac_bro/model/category_model/categoris_model.dart';
import 'package:udevs_mac_bro/ui/main/category_page/category_page_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/ui/main/category_page/category_childreen_item.dart';

import 'categry_item.dart';
final logic = Get.put(Category_pageLogic());
HomeController _controller=Get.put(HomeController());


allCategoryList(){
  RxList<Categories> allCategory = logic.category;
  _controller.a.value=allCategory.length;
  List<Widget> allProductWidget = [];
  for (int i = 0; i < allCategory.length; i++) {
    allProductWidget.add(allCategoryItem(allCategory[i],));

  }

  return allProductWidget;

}
