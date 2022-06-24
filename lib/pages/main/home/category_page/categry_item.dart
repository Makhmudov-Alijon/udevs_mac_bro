import 'package:cached_network_image/cached_network_image.dart';


import 'package:flutter/material.dart';


import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';

import 'package:get/get.dart';
import 'package:udevs_mac_bro/pages/main/home/category_page/category_item_page.dart';


import 'exam_category.dart';


class CategoryItem extends StatelessWidget {
   const CategoryItem({Key? key,required this.allModel}) : super(key: key);
 final Categories allModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        height: 150,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white70),
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 2),
                child: CachedNetworkImage(
                  imageUrl: allModel.image.toString(),
                  placeholder: (context, url) => Image(
                    image: AssetImage('assets/images/macbro.png'),
                  ),
                  errorWidget: (context, url, error) => Image(
                    image: AssetImage('assets/images/macbro.png'),
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
      onTap: () {
        Get.toNamed(
          SubCategoryItem.route,
          arguments: ExamCategory(
              name: allModel.name.toString(), children: allModel.children),
        );
      },
    );
  }
}

