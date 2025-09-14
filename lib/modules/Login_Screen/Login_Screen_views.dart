import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'Login_screen_controller.dart';

class LoginScreenViews extends GetView<LoginScreenController> {
  const LoginScreenViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)),
            ),
            child: Row(children: [
              
            ],),
          ),
        ],
      ),
    );
  }
}
