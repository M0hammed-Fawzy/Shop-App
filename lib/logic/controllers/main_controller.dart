import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:car/view/screens/category_screen.dart';
import 'package:car/view/screens/favorites_screen.dart';
import 'package:car/view/screens/home_screen.dart';
import 'package:car/view/screens/settings_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  var title = [
    "خـدمـات سـيـارات",
    "Categories",
    'المفضلة',
    "الاعدادات",
  ].obs;
}
