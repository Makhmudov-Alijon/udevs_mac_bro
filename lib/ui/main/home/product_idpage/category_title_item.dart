import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/model/product_model/product_model.dart';

class ProdutTitleItem extends StatelessWidget {
   ProdutTitleItem({Key? key,required this.allModel}) : super(key: key);
final Property allModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 3.h,
        left: 3.w,
        bottom: 2.h
      ),
      child:Text(allModel.name.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    );
  }
}
