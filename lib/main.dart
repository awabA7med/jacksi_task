import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jacksi_task/app.dart';
import 'package:jacksi_task/src/core/utils/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(AppStrings.hiveBox);
  runApp(const MyApp());
}
