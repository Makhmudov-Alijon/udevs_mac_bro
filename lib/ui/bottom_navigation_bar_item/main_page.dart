import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:get/get.dart';
import 'package:udevs_mac_bro/ui/main/category_page/category_page_logic.dart';
import 'package:udevs_mac_bro/ui/bottom_navigation_bar_item/profil_page.dart';
import 'package:shimmer/shimmer.dart';
import '../../controller/bottombar_controller.dart';
import '../../core/app_color/app_color.dart';
import '../main/banner_page/banner_page_logic.dart';
import '../main/internet_binding.dart';
import 'basket_page.dart';
import 'favourite_page.dart';
import 'home_page.dart';

class MainPage extends StatelessWidget {
  BottomBArController _controller = Get.put(BottomBArController());
  final logic = Get.put(Category_pageLogic());
  final GetXNetworkManager _networkManager = Get.put(GetXNetworkManager());

  @override
  Widget build(BuildContext context) {

    return GetBuilder<GetXNetworkManager>(builder: (_networkManager) {
      if (_networkManager.connectionType == 0) {
        return  Scaffold(body: Center(child: Text("no internet")));
      }else{
        return Scaffold(
            backgroundColor: Colors.grey[200],
            body: Obx(() {
              return logic.loading.value ? Center(child: const CircularProgressIndicator())
                  :
              IndexedStack(
                index: _controller.tabIndex.value,
                children:  [
                  HomePage(),
                  BasketPage(),
                  FavouritePage(),
                  ProfilPage(),
                ],
              );
            }),
            bottomNavigationBar: Obx(() {
              return BottomNavigationBar(
                unselectedItemColor: AppColors.unselectedBottomNavItem,
                selectedItemColor: Colors.blue,
                onTap: _controller.changeTabIndex,
                currentIndex: _controller.tabIndex.value,
                type: BottomNavigationBarType.fixed,
                backgroundColor: HexColor('#FFFFFF'),
                selectedLabelStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
                elevation: 8,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_filled,
                        color: Colors.grey,
                      ),
                      label: 'Главная',
                      activeIcon: Icon(
                        Icons.home_filled,
                        color: Colors.blue,
                      )),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.grey,
                      ),
                      label: 'Корзина',
                      activeIcon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.blue,
                      )),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.favorite_outline_sharp,
                        color: Colors.grey,
                      ),
                      label: 'Избранные ',
                      activeIcon: Icon(
                        Icons.favorite_outline_sharp,
                        color: Colors.blue,
                      )),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.grey,
                      ),
                      label: 'Профиль ',
                      activeIcon: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.blue,
                      )),
                ],
              );
            }));
      }

    });
  }
}
