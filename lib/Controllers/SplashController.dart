
import 'dart:async';

import 'package:fahadshabir/Screens/LoginScreen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
{
  void onInit()
  {
    super.onInit();
    Timer(const Duration(seconds: 4),()=>Get.offAll(()=> LoginScreen()));
  }

}