import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1E2E), // dark navy
      body: Center(
        child: AnimatedOpacity(
          opacity: controller.visible.value ? 1.0 : 0.0,
          duration: Duration(seconds: 2),
          child: Image.asset(
            'assets/images/libroo.png',
            width: 150,
          ),
        ),
      ),
    );
  }
}
