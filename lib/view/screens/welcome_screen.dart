import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car/routes/routes.dart';
import 'package:car/utils/theme.dart';
import 'package:car/view/screens/auth/login_screen.dart';
import 'package:car/view/widgets/text_utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              /*  color: Colors.black.withOpacity(0.2), */
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  /*   Container(
                    height: 60,
                    width: 190,
                    decoration: BoxDecoration(
                        // color: Colors.black.withOpacity(0.3),
                        //   borderRadius: BorderRadius.circular(5),
                        ),
                    child: Center(
                      child: TextUtils(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                            text: 'Welcome',
                        color: Colors.white,
                        underLine: TextDecoration.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ), 
                  Container(
                    height: 60,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtils(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          text: "Doctor",
                          color: mainColor,
                          underLine: TextDecoration.none,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        TextUtils(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          text: "Code",
                          color: Colors.white,
                          underLine: TextDecoration.none,
                        ),
                      ],
                    ),
                  ),*/
                  const SizedBox(
                    height: 300,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 12,
                        )),
                    onPressed: () {
                      Get.offNamed(Routes.loginScreen);
                    },
                    child: TextUtils(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      text: 'تسجيل الدخول',
                      color: Colors.black,
                      underLine: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 12,
                        )),
                    onPressed: () {
                      Get.offNamed(Routes.signUpScreen);
                    },
                    child: TextUtils(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      text: 'تسجيل مستخدم جديد',
                      color: Colors.black,
                      underLine: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(/*
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextUtils(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        text: "Don't have an Account?",
                        color: Colors.white,
                        underLine: TextDecoration.none,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.signUpScreen);
                        },
                        child: TextUtils(
                          text: 'Sign Up',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          underLine: TextDecoration.underline,
                        ),
                      ),
                    ],
                 */
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
