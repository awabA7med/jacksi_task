import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jacksi_task/src/config/themes/app_theme.dart';
import 'package:jacksi_task/src/core/utils/app_strings.dart';
import 'package:jacksi_task/src/features/home_screen/view/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appName,
      textDirection: TextDirection.rtl,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const HomeScreen(),
      // initialRoute: AppRoutes.getRoutes(),
      // getPages: AppRoutes.routes,
    );
  }
}
