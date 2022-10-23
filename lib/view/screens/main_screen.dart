import 'package:badges/badges.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car/logic/controllers/cart_controller.dart';
import 'package:car/logic/controllers/main_controller.dart';
import 'package:car/routes/routes.dart';

import 'package:car/utils/theme.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.find<MainController>();
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return Scaffold(
          backgroundColor: context.theme.backgroundColor,
          appBar: AppBar(
            elevation: 0,
            leading: Container(),
            actions: [
              Obx(
                () => Badge(
                  position: BadgePosition.topEnd(top: 0, end: 3),
                  animationDuration: const Duration(milliseconds: 300),
                  animationType: BadgeAnimationType.slide,
                  badgeContent: Text(
                    cartController.quantity().toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.cartScreen);
                    },
                    icon: Image.asset('assets/images/shop.png'),
                  ),
                ),
              ),
            ],
            backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
            title: Text(controller.title[controller.currentIndex.value]),
            centerTitle: true,
          ),

          

          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 0, top: 0),
            child: DotNavigationBar(
              margin: const EdgeInsets.only(bottom: 0, top: 0 , left: 10),
              currentIndex: controller.currentIndex.value,
              dotIndicatorColor:
                  Get.isDarkMode ? white : Color.fromARGB(0, 255, 236, 236),
              unselectedItemColor: Colors.black,
              backgroundColor:
                  Get.isDarkMode ? white : mainColor,
                  
               enableFloatingNavBar: false,
              onTap: (index) {
                controller.currentIndex.value = index;
              },

              items: [
                /// Home
                DotNavigationBarItem(
                  icon: const Icon(Icons.home),
                  selectedColor: Get.isDarkMode ? mainColor : white,
                ),

                /// category
                DotNavigationBarItem(
                  icon: const Icon(Icons.category),
                  selectedColor: Get.isDarkMode ? mainColor : white,
                ),

                ///search
                DotNavigationBarItem(
                  icon: const Icon(Icons.search),
                  selectedColor: Get.isDarkMode ? mainColor : white,
                ),

                /// Likes

                DotNavigationBarItem(
                  icon: const Icon(Icons.favorite),
                  selectedColor: Get.isDarkMode ? mainColor : white,
                ),

                /// Profile
                DotNavigationBarItem(
                  icon: const Icon(Icons.person),
                  selectedColor: Get.isDarkMode ? mainColor : white,
                ),
                
              ],
            ),
            
          ),
      /*    bottomNavigationBar: ConvexAppBar(
            backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,

            items: [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.category, title: 'category'),
              TabItem(icon: Icons.favorite, title: 'favorite'),
              TabItem(icon: Icons.people, title: 'Profile'),
            ],
            initialActiveIndex: 0, //optional, default as 0
            onTap: (index) {
              controller.currentIndex.value = index;
            },
          ),*/
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.tabs,
          ),
        );
      }),
    );
  }
}
