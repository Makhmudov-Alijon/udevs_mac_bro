import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/model/category_child_item.dart';
import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';
import 'package:udevs_mac_bro/routes/app_routes.dart';
import 'package:udevs_mac_bro/ui/main/category_child_allitem/category_child_allitem_view.dart';
import 'package:udevs_mac_bro/ui/main/category_child_item/category_child_item.dart';


import 'category_child_item_logic.dart';

class Category_child_itemPage extends StatelessWidget {
  // final logic = Get.find<Category_child_itemLogic>();
  final logic = Get.put(Category_child_itemLogic());
  final String children = Get.arguments ?? '';

  @override
  Widget build(BuildContext context) {
    final RxList<Products> product = logic.category;
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text('Продукты ${children} ',style: TextStyle(color: Colors.black),),
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
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 2.h
                  ),
                  height: 7.h,
                  width: 95.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.w),
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 3.w,),
                      Icon(Icons.menu_outlined,color: Colors.blue,),
                      SizedBox(width: 4.w,),
                      Text('Все продукты'),
                      SizedBox(width: 50.w,),
                      Icon(Icons.arrow_forward_ios,color: Colors.blue,),
                    ],
                  ),
                ),
                onTap: (){
                  // Get.to(()=>Category_child_allitemPage(),);
                  Get.toNamed(AppRoutes.categoryAllChild,arguments: children);
                },
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: product.map((e) => CategoryChildItemm(allModel: e)).toList(),
              ),
            ],
          ),
        ),
      );
    });
  }
}
