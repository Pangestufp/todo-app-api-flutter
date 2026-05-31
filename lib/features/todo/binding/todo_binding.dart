
import 'package:get/get.dart';
import 'package:todo_app_api/features/todo/controller/todo_controller.dart';
import 'package:todo_app_api/features/todo/service/todo_service.dart';
import 'package:todo_app_api/features/todo/service/todo_service_impl.dart';


class TodoBinding extends Bindings {
  @override
  void dependencies() {
    // mendaftarkan implementasi TodoService (untuk dipakai di controller)
    Get.lazyPut<TodoService>(() => TodoServiceImpl());

    // mendaftarkan TodoController dan mengambil dependency TodoService yang telah didaftarkan sebelumnya
    Get.lazyPut(() => TodoController(Get.find<TodoService>()));
  }
}