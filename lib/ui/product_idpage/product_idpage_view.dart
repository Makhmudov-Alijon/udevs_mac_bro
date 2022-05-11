import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/controller/product_controller.dart';
import 'package:udevs_mac_bro/model/product_model/product_model.dart';
import 'package:udevs_mac_bro/ui/product_idpage/category_title_item.dart';
import 'package:udevs_mac_bro/ui/product_idpage/product_image_item.dart';

import 'package:udevs_mac_bro/ui/product_idpage/product_item.dart';


import 'product_idpage_logic.dart';

class ProductIdpagePage extends StatelessWidget {
  // final logic = Get.find<ProductIdpageLogic>();
  final logic = Get.put(ProductIdpageLogic());
  ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    final RxList<Properties> product = logic.allProductList;
    final RxList<Variants> variants = logic.allVariantList;

    return Obx(() {
      return Scaffold(
        appBar: AppBar(),
        body: logic.loading.value
            ? Center(
          child: CircularProgressIndicator(),
        )
            : ListView(

          children: [
            ImageSlideshow(

              height: 25.h,

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
                children: product
                    .elementAt(i)
                    .value!
                    .map((e) => ProductItem(allModel: e, index: i,))
                    .toList(),
              ),

            },

          ],
        ),
      );
    });
  }
}
