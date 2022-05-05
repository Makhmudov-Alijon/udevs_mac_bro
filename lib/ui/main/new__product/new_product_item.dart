import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';

import 'package:udevs_mac_bro/model/new_exam/new_product_list_item.dart';
import 'package:sizer/sizer.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:get/get.dart';

// class NewProductItem {
//   var a = false.obs;
//   var randomId = getRandomString(200);
//   HomeController controller = Get.put(HomeController());
//   final Box productBox = Hive.box('product');
//   List b=[];
//
//   Widget allProductItem(NewExamProductList allModel,) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: EdgeInsets.only(
//               left: 10
//           ),
//           height: 150,
//           width: 150,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8.0),
//             color: Colors.white,
//           ),
//           child: Stack(
//             children: [
//               Expanded(
//                 child: Container(
//                   child: FancyShimmerImage(
//                       imageUrl: allModel.image.toString(),
//
//                       errorWidget: Container(
//
//                         child: Image(
//                           image: AssetImage("images/Vectomacr.png"),
//                         ),
//                       )
//                   ),
//                 ),
//               ),
//               Container(
//                 child: Obx(() {
//                   return IconButton(
//                     icon: a.value ? Icon(Icons.favorite,color: Colors.red,) : Icon(Icons.favorite),
//                     onPressed: () {
//                       // selectedTasks.add(allModel.id.toString());
//
//                       // if(a.value==false){
//                       //   a.value=true;
//                       //   controller.addTask(allModel.id.toString(),allModel.previewImage.toString(),
//                       //       allModel.name.toString());
//                       // }else{
//                       //   a.value=false;
//                       // }
//
//                       print(controller.productBox.length);
//                     },
//                   );
//                 }),
//               ),
//
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(
//               left: 10
//           ),
//           child: Text(allModel.name.toString()),
//         ),
//         Container(
//           margin: EdgeInsets.only(
//               left: 10
//           ),
//           child: Text(allModel.cheapestPrice.toString()),
//         ),
//       ],
//     );
//   }
// }
var a = false.obs;
// var randomId = getRandomString(200);
HomeController controller = Get.put(HomeController());
final Box productBox = Hive.box('product');
List b=[];

Widget allNewProductItem(NewExamProductList allModel,) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(
            left: 10
        ),
        height: 20.h,
        width: 40.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.w),
          color: Colors.white,
        ),
        child: Stack(
          children: [

            Container(
              margin: EdgeInsets.only(
                top: 3.h
              ),
              height: 15.h,
              width: 50.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.w),
                child: Container(
                  margin: EdgeInsets.only(
                    left: 5.w
                  ),
                  child: Image(
                    image: NetworkImage(allModel.image.toString()),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 26.w
              ),
                child: IconButton(
                  icon:  Icon(Icons.favorite,color: Colors.red,size: 3.h,),
                  onPressed: () {
                    // selectedTasks.add(allModel.id.toString());

                    // if(a.value==false){
                    //   a.value=true;
                    //   controller.addTask(allModel.id.toString(),allModel.previewImage.toString(),
                    //       allModel.name.toString());
                    // }else{
                    //   a.value=false;
                    // }


                  },
                )
            ),

          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(
            left: 10
        ),
        child: Text(allModel.name.toString()),
      ),
      Container(
        margin: EdgeInsets.only(
            left: 10
        ),
        child: Text(allModel.cheapestPrice.toString(),style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
      ),
    ],
  );
}