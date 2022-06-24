import 'package:flutter/material.dart';

import 'package:udevs_mac_bro/model/product_model/product_model.dart';

class ProdutTitleItem extends StatelessWidget {
   ProdutTitleItem({Key? key,required this.allModel}) : super(key: key);
final Property allModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child:Text(allModel.name.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    );
  }
}
