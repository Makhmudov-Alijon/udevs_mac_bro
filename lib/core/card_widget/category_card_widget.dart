import 'package:flutter/cupertino.dart';
import 'package:udevs_mac_bro/core/app_color/app_color.dart';
import 'package:flutter/material.dart';
class CategoryCard {

  Widget categoryItem({required double height, required double width, required String title, required Color color,required double border,required String image,})=> Container(
    height: height,
    width: width,

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(border),
      color: color,
    ),
    child: Column(
      children: [
        Image(
          width: 100,
          image: AssetImage(image),
        ),
        Container(

          child: Text(title),
        ),
      ],
    ),

  );


}