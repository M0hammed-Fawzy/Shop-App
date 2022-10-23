import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:car/utils/theme.dart';
import 'package:car/view/widgets/home/card_items.dart';
import 'package:car/view/widgets/home/search_text_form.dart';
import 'package:car/view/widgets/text_utils.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100, //edit
              decoration: BoxDecoration(
                color: Get.isDarkMode ? darkGreyClr : mainColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /* TextUtils(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      text: "Find Your",
                      color: Colors.white,
                      underLine: TextDecoration.none,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextUtils(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      text: "",
                      color: Colors.white,
                      underLine: TextDecoration.none,
                    ),*/
                    const SizedBox(height: 10),
                    SearchFormText(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
         /*   Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextUtils(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  text: "All Services",
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  underLine: TextDecoration.none,
                ),
              ),
            ),*/
            const SizedBox(
              height: 0,
            ),
           CardItems(),
          ],
        ),
      ),
    );
  }
}
