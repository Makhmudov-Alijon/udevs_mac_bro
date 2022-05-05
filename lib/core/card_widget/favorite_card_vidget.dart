import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FavoriterCardd {

  Widget favoriteritem({required double height, required double width, required String title, required String subtitle, required Color color,required double border,required String image})=> Column(
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