import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'package:udevs_mac_bro/model/new_exam/new_product_list_item.dart';



import 'new__product_logic.dart';
import 'new_product_item.dart';


final Box productBox = Hive.box('product');
final logic = Get.put(New_ProductLogic());


allNewProductList() {
  RxList<NewExamProductList> allProduct = logic.allProductList;

  List<Widget> allProductWidget = [];

  for (int i = 0; i < allProduct.length; i++) {
    allProductWidget.add(NewProductItem(allModel: allProduct[i]));
  }
  return allProductWidget;
}


