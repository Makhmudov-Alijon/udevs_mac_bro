

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:sizer/sizer.dart';

import '../../../model/banner_model/banner_model.dart';
import 'package:flutter/material.dart';
Widget allProductItem(BannerModel allModel,) {
  return  Container(
    width: 90.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.w),
          color: Colors.white
      ),
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.w),
              child: CachedNetworkImage(
                imageUrl: allModel.image.toString(),
               imageBuilder: (context, imageProvider)=>Container(
                 decoration: BoxDecoration(
                   image: DecorationImage(
                       image: imageProvider,
                     fit: BoxFit.cover
                       ),
                 ),
               ),
                placeholder: (context, url) => Center(
                  child: Image(

                    image: AssetImage('images/Vectomacr.png'),),
                ),
                errorWidget: (context, url, error) => Center(
                  child: Image(

                    image: AssetImage('images/Vectomacr.png'),),
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5.h,
              left: 5.w
            ),
            child:Text(allModel.title.toString(),style: TextStyle(color: Colors.white),),
          ),

        ],
      )
  );
}