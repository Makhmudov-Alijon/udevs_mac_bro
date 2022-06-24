import 'package:flutter/material.dart';



class ProdutTitleItem extends StatelessWidget {
   ProdutTitleItem({Key? key,required this.allModel}) : super(key: key);
final String allModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child:Text(allModel,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    );
  }
}
