import 'package:udevs_mac_bro/model/category_model/categoris_model.dart';
import 'package:udevs_mac_bro/ui/main/category_page/category_page_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'categry_item.dart';
final logic = Get.put(Category_pageLogic());


allCategoryList(context){
  RxList<CategoryModelItem> allCategory = logic.category;
  List<Widget> allProductWidget = [];
  for (int i = 0; i < allCategory.length; i++) {
    allProductWidget.add(allCategoryItem(allCategory[i],context));

  }

  return allProductWidget;

}