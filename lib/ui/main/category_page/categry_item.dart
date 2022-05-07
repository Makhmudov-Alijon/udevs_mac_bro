

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';

import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';
import 'package:udevs_mac_bro/model/category_model/categoris_model.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/ui/main/category_page/Category_item_page.dart';


HomeController _controller=Get.put(HomeController());
Widget allCategoryItem(Categories allModel,) {
  return  Container(
    margin: EdgeInsets.only(
        left: 10,
        top: 20
    ),
    height: 20.h,
    width: 25.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white70
    ),
    child: GestureDetector(
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 2.h
              ),
              child: FancyShimmerImage(
                  imageUrl: allModel.image.toString(),
                  boxFit: BoxFit.fitHeight,
                  errorWidget:Container(

                    child: Image(
                      image: AssetImage("images/Vectomacr.png"),
                    ),
                  )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                bottom: 20,
                top: 20
            ),
            child:Text(allModel.name.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
          ),

        ],
      ),

      onTap: (){

        Get.to(()=> CategoryItem());
      },
    ),

  );

}