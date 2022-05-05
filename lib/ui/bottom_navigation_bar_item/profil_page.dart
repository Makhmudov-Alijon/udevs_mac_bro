import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
    // return SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       AppBar(
    //         title: Column(
    //           children: const [
    //             Text('Абдумансуров',style: TextStyle(color: Colors.black),),
    //             Text('Абдукаххор',style: TextStyle(color: Colors.black),),
    //             Text(' +998 (90) 999-99-99',style: TextStyle(color: Colors.black),),
    //           ],
    //         ),
    //         centerTitle: true,
    //         backgroundColor: Colors.white,
    //         toolbarHeight: 80,
    //       ),
    //       Container(
    //         margin: EdgeInsets.only(
    //           top: height*.03
    //         ),
    //         height: height*.52,
    //         width: width*.9,
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           borderRadius: BorderRadius.circular(10)
    //         ),
    //         child: Column(
    //           children: [
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start
    //               ,children: [
    //                 Container(
    //                   margin: EdgeInsets.only(
    //                     top: height*.02,
    //                     left: width*.02
    //                   ),
    //                   child: Icon(Icons.person_outline_outlined,color: Colors.blue,),
    //                 ),
    //                 Container(
    //                     margin: EdgeInsets.only(
    //                         top: height*.02,
    //                         left: width*.02
    //                     ),child: Text("Изменить профиль",style: TextStyle(fontSize: 18),)),
    //                 Container(
    //                     margin: EdgeInsets.only(
    //                         top: height*.02,
    //                         left: width*.3
    //                     ),
    //                   child: Icon(Icons.arrow_forward_ios,)
    //                 )
    //               ],
    //             ),
    //             Divider(),
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start
    //               ,children: [
    //               Container(
    //                 margin: EdgeInsets.only(
    //                     top: height*.02,
    //                     left: width*.02
    //                 ),
    //                 child: Icon(Icons.list_alt_sharp,color: Colors.blue,),
    //               ),
    //               Container(
    //                   margin: EdgeInsets.only(
    //                       top: height*.02,
    //                       left: width*.02
    //                   ),child: Text("История заказов",style: TextStyle(fontSize: 18),)),
    //               Container(
    //                   margin: EdgeInsets.only(
    //                       top: height*.02,
    //                       left: width*.35
    //                   ),
    //                   child: Icon(Icons.arrow_forward_ios,)
    //               )
    //             ],
    //             ),
    //             Divider(),
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start
    //               ,children: [
    //               Container(
    //                 margin: EdgeInsets.only(
    //                     top: height*.02,
    //                     left: width*.02
    //                 ),
    //                 child: Icon(Icons.history_sharp,color: Colors.blue,),
    //               ),
    //               Container(
    //                   margin: EdgeInsets.only(
    //                       top: height*.02,
    //                       left: width*.02
    //                   ),child: Text("История рассрочки",style: TextStyle(fontSize: 18),)),
    //               Container(
    //                   margin: EdgeInsets.only(
    //                       top: height*.02,
    //                       left: width*.3
    //                   ),
    //                   child: Icon(Icons.arrow_forward_ios,)
    //               )
    //             ],
    //             ),
    //             Divider(),
    //             Divider(),
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start
    //               ,children: [
    //               Container(
    //                 margin: EdgeInsets.only(
    //                     top: height*.02,
    //                     left: width*.02
    //                 ),
    //                 child: Icon(Icons.calculate_outlined,color: Colors.blue,),
    //               ),
    //               Container(
    //                   margin: EdgeInsets.only(
    //                       top: height*.02,
    //                       left: width*.02
    //                   ),child: Text("Калькулятор рассрочки",style: TextStyle(fontSize: 18),)),
    //               Container(
    //                   margin: EdgeInsets.only(
    //                       top: height*.02,
    //                       left: width*.2
    //                   ),
    //                   child: Icon(Icons.arrow_forward_ios,)
    //               )
    //             ],
    //             ),
    //             Divider(),
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start
    //               ,children: [
    //               Container(
    //                 margin: EdgeInsets.only(
    //                     top: height*.02,
    //                     left: width*.02
    //                 ),
    //                 child: Icon(Icons.shopping_cart_outlined,color: Colors.blue,),
    //               ),
    //               Container(
    //                   margin: EdgeInsets.only(
    //                       top: height*.02,
    //                       left: width*.02
    //                   ),child: Text("Магазины",style: TextStyle(fontSize: 18),)),
    //               Container(
    //                   margin: EdgeInsets.only(
    //                       top: height*.02,
    //                       left: width*.5
    //                   ),
    //                   child: Icon(Icons.arrow_forward_ios,)
    //               )
    //             ],
    //             ),
    //             Divider(),
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start
    //               ,children: [
    //               Container(
    //                 margin: EdgeInsets.only(
    //                     top: height*.02,
    //                     left: width*.02
    //                 ),
    //                 child: Icon(Icons.settings,color: Colors.blue,),
    //               ),
    //               Container(
    //                   margin: EdgeInsets.only(
    //                       top: height*.02,
    //                       left: width*.02
    //                   ),child: Text("Настройки",style: TextStyle(fontSize: 18),)),
    //               Container(
    //                   margin: EdgeInsets.only(
    //                       top: height*.02,
    //                       left: width*.48
    //                   ),
    //                   child: Icon(Icons.arrow_forward_ios,)
    //               )
    //             ],
    //             ),
    //
    //             Divider(),
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start
    //               ,children: [
    //               Container(
    //                 margin: EdgeInsets.only(
    //
    //                     left: width*.02
    //                 ),
    //                 child: Icon(Icons.call,color: Colors.blue,),
    //               ),
    //               Container(
    //                   margin: EdgeInsets.only(
    //
    //                       left: width*.02
    //                   ),child: Text("Контакты",style: TextStyle(fontSize: 18),)),
    //               Container(
    //                   margin: EdgeInsets.only(
    //
    //                       left: width*.5
    //                   ),
    //                   child: Icon(Icons.arrow_forward_ios,)
    //               )
    //             ],
    //             ),
    //
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
