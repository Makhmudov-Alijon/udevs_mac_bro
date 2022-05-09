import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/model/category_child_item.dart';
import 'package:udevs_mac_bro/model/category_chils.dart';
import 'package:udevs_mac_bro/ui/main/category_child_allitem/category_child_all_item.dart';
import 'package:udevs_mac_bro/ui/main/category_child_item/category_child_item.dart';

import 'category_child_allitem_logic.dart';

class Category_child_allitemPage extends StatelessWidget {
  // final logic = Get.find<Category_child_allitemLogic>();
  final logic=Get.put(Category_child_allitemLogic());
  final String children = Get.arguments ?? '';
  @override
  Widget build(BuildContext context) {

    final RxList<ProductVariants> product = logic.category;
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text('Продукты ${children}',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          elevation: 1,
        ),
        body: logic.loading.value ? Center(child: CircularProgressIndicator()) : SingleChildScrollView(
          child: Column(
            children: [

              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: product.map((e) => CategoryChildAllItem(allModel: e)).toList(),
              ),
            ],
          ),
        ),
      );
    });
  }
}
