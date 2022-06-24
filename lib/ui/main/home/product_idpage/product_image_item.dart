


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';


import 'package:udevs_mac_bro/controller/product_controller.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/product_idpage_logic.dart';



class ProductImageItem extends StatelessWidget {
   ProductImageItem({Key? key,required this.allModel,}) : super(key: key);
  final String allModel;

 final ProductController controller = Get.put(ProductController());
  final ProductIdpageLogic logic = Get.put(ProductIdpageLogic());
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: allModel,
      width: 100,
      height: 100,
      fit: BoxFit.fitHeight,
      // imageBuilder: (context, imageProvider)=>Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: imageProvider,
      //         fit: BoxFit.fitHeight,
      //     ),
      //   ),
      // ),
      placeholder: (context, url) => Image(

        image: AssetImage('images/Vectomacr.png'),),
      errorWidget: (context, url, error) => Image(

        image: AssetImage('images/Vectomacr.png'),),
    );
  }
}
