import 'package:get/get.dart';
import 'dart:async';

class SplashController extends GetxController {
  RxBool visible = false.obs;

  @override
  void onInit() {
    super.onInit();

    // Fade in
    Future.delayed(Duration(milliseconds: 500), () {
      visible.value = true;
    });

    // Fade out dan pindah ke home
    Future.delayed(Duration(seconds: 3), () {
      visible.value = false;
    });

    // Pindah ke halaman berikutnya setelah delay
    Future.delayed(Duration(seconds: 5), () {
      Get.offAllNamed('/home'); // ganti sesuai route
    });
  }
}
