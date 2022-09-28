import 'package:get/get.dart';
import 'package:lichcongtac/controllers/department_controller.dart';
import 'package:lichcongtac/controllers/schedule_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<DepartmentController>(DepartmentController());
    Get.put<ScheduleController>(ScheduleController());
  }
}