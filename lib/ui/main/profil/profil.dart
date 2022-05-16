import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/model/user_create/UserMe.dart';
import 'package:udevs_mac_bro/ui/main/profil/profil_logic.dart';


class ProfilPage extends StatelessWidget {
  ProfilPage({Key? key}) : super(key: key);
  final logic = Get.put(ProfilLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Obx(() => logic.loading.value
        //     ? Center(child: CircularProgressIndicator())
        //     : userList()),
    );
  }


  Widget _userItem(UserMe model,) {
    return SingleChildScrollView(

      child: Column(

        children: [
          SizedBox(height: 20,),
          Container(
            child: Text("Name :  ${ model.firstName}"),
          ),
          Container(
            child: Text("Email :  ${ model.lastName}"),
          ),
          Container(
            child: Text("Age :  ${ model.phoneNumber}"),
          ),
        ],
      ),
    );
  }
}


