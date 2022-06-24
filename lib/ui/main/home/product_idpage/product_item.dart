
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



import 'package:udevs_mac_bro/controller/product_controller.dart';
import 'package:udevs_mac_bro/model/product_model/product_model.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/product_idpage_logic.dart';




class ProductItem extends StatelessWidget {
  ProductItem({Key? key, required this.allModel,}) : super(key: key);
  final Value1 allModel;


  ProductController controller = Get.put(ProductController());
 final ProductIdpageLogic logic = Get.put(ProductIdpageLogic());
 RxBool isselect=RxBool(false);
  @override
  Widget build(BuildContext context) {

    return Obx(() {

      return GestureDetector(
        child: Container(
            width: 55,
            height: 70,

            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.white ,
                boxShadow: controller.isSelected.value ?null: null
            ),
            child: Column(
              children: [
                SizedBox(height: 15,),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorRead(allModel.value.toString().toLowerCase()),
                  ),


                ),
                Center(
                  child: Text(allModel.name.toString(),),
                ),
              ],
            )
        ),
        onTap: onSelected(isselect.value),
      );
    });
  }
  ColorRead(String color){
    switch (color) {
      case 'red': {
        return Colors.red;
      }
      case 'black':{
        return Colors.black;
      }
      case 'pink': {
        return Colors.pink;
      }
      case 'blue':{
        return HexColor('#3a88fe');
      }
      case 'green':{
        return Colors.green;
      }
      case 'white':{
        return Colors.grey[300];
      }
      case 'gold':{
        return HexColor('#ffd877');
      }
      case 'silver':{
      return HexColor('#DDE6E8');
      }
      case 'graphite':{
        return HexColor('#606060');
      }
      case 'light blue':{
        return HexColor('#6fb7e7');
      }
      case 'grey':{
        return Colors.grey;
      }
      case 'purple':{
        return HexColor('#8E43AD');
      }
    }

  }
   onSelected(bool selected) {
    if(selected){
      selected=false;
    }else{
      selected=true;
    }

   }
}
