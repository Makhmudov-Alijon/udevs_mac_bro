import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:udevs_mac_bro/model/SearchModel.dart';
import 'package:udevs_mac_bro/pages/main/home/product_detail_page/argumnet_product.dart';
import 'package:udevs_mac_bro/pages/main/home/product_detail_page/product_detail_page_view.dart';


class SearchItem extends StatelessWidget {
  SearchItem({Key? key, required this.allmodel}) : super(key: key);
  final Products allmodel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>ProductIdpagePage(),arguments: ProductArgumnt(name: allmodel.name.toString(), price: allmodel.name.toString(), id: allmodel.id.toString()));
      },
      child: Container(
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
        child: Row(
          children: [
            SizedBox(width: 10,),
            Container(
              height: 40,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1
                  )
                ]
              ),
              child: CachedNetworkImage(
                imageUrl: allmodel.image.toString(),
                fit: BoxFit.fitHeight,
                placeholder: (context, url) => Image(
                  image: AssetImage('assets/images/macbro.png'),
                ),
                errorWidget: (context, url, error) => Image(
                  image: AssetImage('assets/images/macbro.png'),
                ),
              ) ,
            ),
            SizedBox(width: 10,),
            Text(allmodel.name.toString()),
          ],
        ),
      ),
    );
  }
}
