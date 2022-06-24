import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'package:udevs_mac_bro/controller/product_controller.dart';
import 'package:udevs_mac_bro/model/product_model/product_model.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/argumnet_product.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/category_title_item.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/product_image_item.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/product_item.dart';





import 'product_idpage_logic.dart';

class ProductIdpagePage extends StatelessWidget {
  // final logic = Get.find<ProductIdpageLogic>();
  final logic = Get.put(ProductIdpageLogic());
  ProductController controller = Get.put(ProductController());
  final ProductArgumnt children = Get.arguments ?? [];
  RxBool a=RxBool(false);
  @override
  Widget build(BuildContext context) {
    final RxList<Properties> product = logic.allProductList;
    final RxList<Variants> variants = logic.allVariantList;
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text(children.name.toString()),
          centerTitle: true,
        ),
        body: logic.loading.value
            ? Center(
          child: CircularProgressIndicator(),
        )
            : ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: EdgeInsets.only(
            bottom: 12
          ),
          children: [
            ImageSlideshow(

              height: 200,

              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              onPageChanged: (value) {

              },
              autoPlayInterval: 3000,
              isLoop: true,
              children:variants.first.value!.gallery!.map((e) => ProductImageItem(allModel: e, ))
                  .toList(),
            ),


            for (int i = 0; i < product.length; i++) ...{
              ProdutTitleItem(allModel: product
                  .elementAt(i)
                  .property!),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: product.elementAt(i).value!
                    .map((e) => GestureDetector(
                    onTap: (){
                      if(e.name==product.elementAt(i).value!.elementAt(i).name){
                        a.value=true;
                      }else{
                        a.value=false;
                      }
                    },
                    child: ProductItem(allModel: e,)))
                    .toList(),
              ),

            },

          ],
        ),
        // bottomSheet: Container(
        //   width: 100,
        //
        //   height: 10,
        //   decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.only(
        //         topRight: Radius.circular(4),
        //         topLeft: Radius.circular(4),
        //       )
        //   ),
        //   child: Container(
        //     width: 90,
        //     height: 6,
        //     margin: EdgeInsets.only(
        //       left: 5,
        //       right: 5,
        //       bottom: 2,
        //       top: 2
        //     ),
        //     decoration: BoxDecoration(
        //       color: Colors.blue,
        //       borderRadius: BorderRadius.circular(2)
        //     ),
        //     child: Center(child:  SingleChildScrollView(
        //       child: Column(
        //         children: [
        //           for(var i=0;i<variants.length;i++)...{
        //             if(variants.elementAt(i).name=="${controller.name.value}-${controller.ram.value}")...{
        //
        //               Text(variants.elementAt(i).value!.price!.uzsPrice.toString()),
        //             },
        //
        //           },
        //
        //         ],
        //       ),
        //     )),
        //   ),
        // ),
      );
    });
  }
}
