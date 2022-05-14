import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
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
            bottom: 12.h
          ),
          children: [
            if(controller.name.isEmpty)...{
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
            }else...{
              for(var i=0;i<variants.length;i++)...{
                if(variants.elementAt(i).name!.contains(controller.name.value))...{
                  if(variants.elementAt(i).name!.contains(controller.ram.value))...{
                    if(product.length==2)...{
                      ImageSlideshow(

                        height: 25.h,

                        indicatorColor: Colors.blue,
                        indicatorBackgroundColor: Colors.grey,
                        onPageChanged: (value) {

                        },
                        autoPlayInterval: 3000,
                        isLoop: true,
                        children:variants.elementAt(i).value!.gallery!.map((e) => ProductImageItem(allModel: e, ))
                            .toList(),
                      ),
                    },
                    if(product.length==3)...{
                      if(variants.elementAt(i).name!.contains(controller.single.value))...{
                        ImageSlideshow(

                          height: 25.h,

                          indicatorColor: Colors.blue,
                          indicatorBackgroundColor: Colors.grey,
                          onPageChanged: (value) {

                          },
                          autoPlayInterval: 3000,
                          isLoop: true,
                          children:variants.elementAt(i).value!.gallery!.map((e) => ProductImageItem(allModel: e, ))
                              .toList(),
                        ),
                      }
                    }


                  }

                }




              },
            },


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
        bottomSheet: Container(
          width: 100.w,

          height: 10.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4.w),
                topLeft: Radius.circular(4.w),
              )
          ),
          child: Container(
            width: 90.w,
            height: 6.h,
            margin: EdgeInsets.only(
              left: 5.w,
              right: 5.w,
              bottom: 2.h,
              top: 2.h
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(2.w)
            ),
            child: Center(child:  SingleChildScrollView(
              child: Column(
                children: [
                  for(var i=0;i<variants.length;i++)...{
                    if(variants.elementAt(i).name=="${controller.name.value}-${controller.ram.value}")...{

                      Text(variants.elementAt(i).value!.price!.uzsPrice.toString()),
                    },

                  },

                ],
              ),
            )),
          ),
        ),
      );
    });
  }
}
