
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import 'package:udevs_mac_bro/controller/product_controller.dart';
import 'package:udevs_mac_bro/model/product_model/product_model.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/product_idpage_logic.dart';




class ProductItem extends StatelessWidget {
  ProductItem({Key? key, required this.allModel,required this.index}) : super(key: key);
  final Value1 allModel;
  final int index;
  ProductController controller = Get.put(ProductController());
 final ProductIdpageLogic logic = Get.put(ProductIdpageLogic());

  @override
  Widget build(BuildContext context) {

    return Obx(() {

      return GestureDetector(
        child: Container(
            width: 30.w,
            height: 10.h,

            margin: EdgeInsets.only(

            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.w),
                color: Colors.white,
                boxShadow: controller.isSelected.value ?null: null
            ),
            child: Column(
              children: [
                // Container(
                //   height: 5.h,
                //   width: 5.w,
                //   color: HexColor("#ffd877"),
                //
                // ),
                Container(


                  child: Text(allModel.name.toString(),),
                ),
              ],
            )
        ),
        onTap:(){
          controller.isSelected.value=true;
          onSelected(controller.isSelected.value);
        },
      );
    });
  }

   onSelected(bool selected){


     if(selected==true){

       if(allModel.name.toString().split('').contains('B')==true){
         controller.ram.value=allModel.value.toString().toLowerCase();
       }else{
         controller.name.value=allModel.value.toString().toLowerCase();
       }
     }else{
       return null;
     }
  }
}
