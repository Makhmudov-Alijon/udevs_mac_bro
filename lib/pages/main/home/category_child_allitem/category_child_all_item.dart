import 'package:cached_network_image/cached_network_image.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'package:udevs_mac_bro/controller/home_controller.dart';
import 'package:udevs_mac_bro/model/category_model/category_chils.dart';

import 'package:udevs_mac_bro/pages/main/home/product_detail_page/argumnet_product.dart';
import 'package:udevs_mac_bro/pages/main/home/product_detail_page/product_detail_page_view.dart';




class CategoryChildAllItem extends StatelessWidget {
   CategoryChildAllItem({Key? key,required this.allModel}) : super(key: key);
  final ProductVariants allModel;
  HomeController controller = Get.put(HomeController());
  final Box productBox = Hive.box('product');
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: 3, top: 2,right: 3,bottom: 1),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              height: 150,
              width: 200,
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
                    height: 150,
                    width: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: CachedNetworkImage(
                        imageUrl: allModel.image.toString(),
                        imageBuilder: (context, imageProvider)=>Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.fitHeight
                            ),
                          ),
                        ),
                        placeholder: (context, url) => Image(

                          image: AssetImage('assets/images/macbro.png'),),
                        errorWidget: (context, url, error) => Image(

                          image: AssetImage('assets/images/macbro.png'),),
                      ),
                    ),
                  ),
                  Container(

                    margin: EdgeInsets.only(
                        left: 27,
                        top: 2
                    ),
                    child: FavoriteButton(
                      iconSize: 9,
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
              width: 200,
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
              child: Text("${allModel.price!.uzsPrice.toString()} sum", style: TextStyle(color: Colors.blue,),),
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
