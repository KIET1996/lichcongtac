import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:lichcongtac/services/get_department.dart';

class ScheduleController extends GetxController {
  static ScheduleController instance = Get.find();
  final isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }

  @override
  void onClose() {}

  Future getDepartment(String path) async {
    try {
      isLoading.value = true;
      var departmentList = await GetDepartmentService.getDepartmentList();
      await Future.delayed(const Duration(milliseconds: 1000));
      isLoading.value = false;
      return departmentList;
    } catch (e) {
      if (kDebugMode) {
        print("=============>DEBUG GET DEPARTMENT CONTROLLER: $e");
      }
      return [];
    }
  }
}
