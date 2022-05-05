import 'package:flutter/cupertino.dart';
import 'package:udevs_mac_bro/core/app_color/app_color.dart';
import 'package:flutter/material.dart';
class SkidCard {

  Widget skidItem({required double height, required double width, required String title, required String subtitle, required Color color,required double border,required String image,required int skid})=> Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        children: [
          Container(
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

              ],
            ),

          ),
          Container(
            height: 20,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Text("-${skid.toString()}"),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 100,
                top: 5
            ),
            child: Icon(Icons.favorite,color: Colors.grey,),
          )
        ],
      ),

      Container(
        child: Text(title),
      ),
      Container(
        child: Text(subtitle,style: TextStyle(color: Colors.blue),),
      )
    ],
  );


}