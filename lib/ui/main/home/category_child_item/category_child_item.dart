import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:udevs_mac_bro/model/category_model/category_child_item.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/argumnet_product.dart';
import 'package:udevs_mac_bro/ui/main/home/product_idpage/product_idpage_view.dart';
// import 'package:udevs_mac_bro/ui/main/home/product_idpage/argumnet_product.dart';
// import 'package:udevs_mac_bro/ui/main/home/product_idpage/product_idpage_view.dart';

class CategoryChildItemm extends StatelessWidget {
   CategoryChildItemm({Key? key, required this.allModel}) : super(key: key);
  final Products allModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        height: 150,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white70),
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 2),
                child: CachedNetworkImage(
                  imageUrl: allModel.image.toString(),
                  placeholder: (context, url) => Image(
                    image: AssetImage('images/Vectomacr.png'),
                  ),
                  errorWidget: (context, url, error) => Image(
                    image: AssetImage('images/Vectomacr.png'),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only( top: 1,left: 2,right: 2),
              child: Text(
                allModel.name.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 2
              ),
              child: Text(
                "${allModel.cheapestPrice.toString()} sum",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
              ),
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
