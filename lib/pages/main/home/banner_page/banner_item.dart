import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:udevs_mac_bro/model/banner_model/banner_model.dart';

class BannerItem extends StatelessWidget {
  BannerItem({Key? key, required this.allModel}) : super(key: key);
  final BannerModel allModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.white),
        child: Stack(
          children: [
            Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: allModel.image.toString(),
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                    placeholder: (context, url) => Center(
                      child: Image(
                        image: AssetImage('assets/images/macbro.png'),
                      ),
                    ),
                    errorWidget: (context, url, error) => Center(
                      child: Image(
                        image: AssetImage('assets/images/macbro.png'),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 5),
              child: Text(
                allModel.title.toString(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
