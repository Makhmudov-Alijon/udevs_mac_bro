import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';

import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';
import 'package:udevs_mac_bro/model/category_model/categoris_model.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/routes/app_routes.dart';
import 'package:udevs_mac_bro/ui/main/category_page/category_item_page.dart';
import 'package:udevs_mac_bro/ui/main/category_page/exam_category.dart';

HomeController _controller = Get.put(HomeController());

Widget allCategoryItem(
  Categories allModel,
) {
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(left: 10, top: 20),
      height: 20.h,
      width: 25.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.white70),
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 2.h),
              child: CachedNetworkImage(
                imageUrl: allModel.image.toString(),
                placeholder: (context, url) => Image(
                  image: AssetImage('images/Vectomacr.png'),
                ),
                errorWidget: (context, url, error) => Image(
                  image: AssetImage('images/Vectomacr.png'),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20, top: 20),
            child: Text(
              allModel.name.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
    onTap: (){
      Get.toNamed(AppRoutes.subCategory, arguments: ExamCategory(name: allModel.name.toString(), children: allModel.children),);
    },
  );
}
