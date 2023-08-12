import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/app.dart';
import 'package:jacksi_task/src/config/app_settings.dart';
import 'package:jacksi_task/src/core/services/local/init_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //
  await AppStorage().initStorage();
  await Get.putAsync(() => AppSettings().init());

  runApp(const MyApp());
}
