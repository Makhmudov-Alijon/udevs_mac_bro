import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/model/category_model/category_child_item.dart';
import 'package:udevs_mac_bro/ui/product_idpage/product_idpage_view.dart';


class CategoryChildItemm extends StatelessWidget {
   CategoryChildItemm({Key? key, required this.allModel}) : super(key: key);
  final Products allModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: 3.w, top: 2.h,right: 3.w,bottom: 1.h),
        height: 25.h,
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
              margin: EdgeInsets.only( top: 1.h,left: 2.w,right: 2.w),
              child: Text(
                allModel.name.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 2.h
              ),
              child: Text(
                "${allModel.cheapestPrice.toString()} sum",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      onTap: (){
        print(allModel.id.toString());
        Get.to(()=>ProductIdpagePage(),arguments: allModel.id.toString());
      },
    );
  }
}
