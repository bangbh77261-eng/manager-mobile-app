import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'Login_screen_controller.dart';

class LoginScreenViews extends GetView<LoginScreenController> {
  const LoginScreenViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Text('data'),
      ),
    );
  }
}
