import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';
import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/routes/app_routes.dart';

class CategoryChild extends StatelessWidget {
   CategoryChild({
    Key? key,
    required this.allModel,
  }) : super(key: key);
  final Children allModel;
HomeController _controller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: 3.w, top: 2.h,right: 3.w,bottom: 1.h),
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
            )
          ],
        ),
      ),
      onTap: () {
        _controller.id.value=allModel.id.toString();
        Get.toNamed(AppRoutes.categoryChild,arguments: allModel.name);
      },
    );
  }
}
