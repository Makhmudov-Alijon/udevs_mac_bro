import 'package:cached_network_image/cached_network_image.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'package:udevs_mac_bro/controller/home_controller.dart';

import 'package:udevs_mac_bro/model/new_exam/new_product_list_item.dart';
import 'package:sizer/sizer.dart';

import 'package:get/get.dart';
import 'package:udevs_mac_bro/model/product_model/product_model.dart';
import 'package:udevs_mac_bro/ui/exam.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/argumnet_product.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/product_idpage_view.dart';


class NewProductItem extends StatelessWidget {
   NewProductItem({Key? key,required this.allModel}) : super(key: key);
final NewExamProductList allModel;
   HomeController controller = Get.put(HomeController());
   final Box productBox = Hive.box('product');
   var randomId = getRandomString(200);

   List b = [];
   late final Value1 allModell;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 10,
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
                        top: 2.h
                    ),
                    height: 17.h,
                    width: 50.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.w),
                      child: CachedNetworkImage(
                        imageUrl: allModel.image.toString(),
                        placeholder: (context, url) => Image(

                          image: AssetImage('images/Vectomacr.png'),),
                        errorWidget: (context, url, error) => Image(

                          image: AssetImage('images/Vectomacr.png'),),
                      ),
                    ),
                  ),
                  Container(

                    margin: EdgeInsets.only(
                        left: 27.w,
                        top: 2.h
                    ),
                    child: FavoriteButton(
                      iconSize: 9.w,
                      isFavorite: controller.isFavorite.value,
                      iconColor: controller.isFavorite.value? Colors.grey : Colors.blue,
                      valueChanged: (bool isFavorite) {

                        if(isFavorite==true){
                          controller.isFavorite.value=true;
                          controller.addTask(
                              allModel.id.toString(), allModel.image.toString(),
                              allModel.name.toString());
                        }else{
                          controller.deleteTask(controller.d.value);
                          controller.isFavorite.value=false;

                        }
                      },
                    ),
                  ),




                ],
              ),
            ),
            Container(
              width: 40.w,
              margin: EdgeInsets.only(
                  left: 10
              ),
              child: Text(allModel.name.toString()),
            ),
            Container(
              // width: 40.w,
              margin: EdgeInsets.only(
                  left: 10
              ),
              child: Text("${allModel.cheapestPrice.toString()} sum", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
            ),

          ],
        ),
      ),
      onTap: (){
        print(allModel.id.toString());

        Get.to(()=>ProductIdpagePage(),arguments: ProductArgumnt(name: allModel.name.toString(), price: allModel.cheapestPrice.toString(), id: allModel.id.toString()));
      },
    );
  }
}
