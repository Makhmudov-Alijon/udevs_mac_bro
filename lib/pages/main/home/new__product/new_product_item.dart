import 'package:cached_network_image/cached_network_image.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';



import 'package:udevs_mac_bro/controller/home_controller.dart';

import 'package:udevs_mac_bro/model/new_exam/new_product_list_item.dart';


import 'package:get/get.dart';
import 'package:udevs_mac_bro/model/product_model/product_model.dart';
import 'package:udevs_mac_bro/pages/main/home/product_detail_page/argumnet_product.dart';
import 'package:udevs_mac_bro/pages/main/home/product_detail_page/product_detail_page_view.dart';





class NewProductItem extends StatelessWidget {
   NewProductItem({Key? key,required this.allModel}) : super(key: key);
final NewExamProductList allModel;
   HomeController controller = Get.put(HomeController());
   final Box productBox = Hive.box('product');


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
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.white,
              ),
              child: Stack(
                children: [

                  Container(
                    margin: EdgeInsets.only(
                        top: 2
                    ),
                    height: 200,
                    width: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: CachedNetworkImage(
                        imageUrl: allModel.image.toString(),
                        placeholder: (context, url) => Image(

                          image: AssetImage('assets/images/macbro.png'),),
                        errorWidget: (context, url, error) => Image(

                          image: AssetImage('assets/images/macbro.png'),),
                      ),
                    ),
                  ),
                  Container(

                    margin: EdgeInsets.only(
                        left: 120,
                        top: 10
                    ),
                    child: FavoriteButton(
                      iconSize: 40,
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
              width: 150,
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

