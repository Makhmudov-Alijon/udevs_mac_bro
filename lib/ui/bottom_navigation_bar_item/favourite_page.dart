import 'package:flutter/material.dart';

import '../../core/card_widget/favorite_card_vidget.dart';
import '../../core/card_widget/new_card_widget.dart';

class FavourtiPage extends StatefulWidget {
  const FavourtiPage({Key? key}) : super(key: key);

  @override
  State<FavourtiPage> createState() => _FavourtiPageState();
}

class _FavourtiPageState extends State<FavourtiPage> {
  final cardfavrite=FavoriterCardd();
  @override
  Widget build(BuildContext context) {
    return Container();
    // return SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       AppBar(
    //         title: Text('Избранные',style: TextStyle(color: Colors.black),),
    //         centerTitle: true,
    //         backgroundColor: Colors.white,
    //       ),
    //       Container(
    //         margin: EdgeInsets.only(
    //           left: width*.04,
    //           top: height*.01
    //         ),
    //         child: GridView.count(
    //           scrollDirection: Axis.vertical,
    //           shrinkWrap: true,
    //             crossAxisCount: 2,
    //          mainAxisSpacing: 50,
    //
    //           children: [
    //
    //             cardfavrite.favoriteritem(height: height*.2, width: width*.40,border: 10, title: "asdasd", subtitle: "asdsadasd", color: Colors.white, image: 'images/imagecarousel.png'),
    //             cardfavrite.favoriteritem(height: height*.2, width: width*.40,border: 10, title: "asdasd", subtitle: "asdsadasd", color: Colors.white, image: 'images/imagecarousel.png'),
    //             cardfavrite.favoriteritem(height: height*.2, width: width*.40,border: 10, title: "asdasd", subtitle: "asdsadasd", color: Colors.white, image: 'images/imagecarousel.png'),
    //             cardfavrite.favoriteritem(height: height*.2, width: width*.40,border: 10, title: "asdasd", subtitle: "asdsadasd", color: Colors.white, image: 'images/imagecarousel.png'),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
