import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project_mobile_app/network/models/user_test.dart';
import 'package:my_project_mobile_app/network/repositories/app_config_repository.dart';
import 'package:my_project_mobile_app/routers/app_router.dart';
class MainController extends GetxController {
   var isLoading = false.obs;
  var users = <UserTest>[].obs;
  var currentIndex = 0.obs;
  /// navigation bar
  final UserServiceTest _userService = UserServiceTest();
 void changeIndex(int index) {
    currentIndex.value = index;
  }
  // API user
  @override
  void onInit() {
    super.onInit();
    loadUserData(); // Tự động gọi khi mở màn hình
  }

  Future<void> loadUserData() async {
    try {
      isLoading.value = true;
      final fetchedUsers = await _userService.getAllData();
      users.assignAll(fetchedUsers);
    } catch (e) {
      debugPrint("Login lỗi: $e");
      Get.snackbar(
        "Error",
        "Không tìm thấy tài khoản",
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
  // Get page 
}