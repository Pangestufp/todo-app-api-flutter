import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_api/shared/routes/app_pages.dart';
import 'package:todo_app_api/shared/routes/routes.dart';

void main() async {
  // Memastikan layanan Flutter telah siap digunakan
  WidgetsFlutterBinding.ensureInitialized(); // sebelum mengakses SharedPreferences.

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.MENU_TODO,
      getPages: AppPages.routes,
    ),
  );
}