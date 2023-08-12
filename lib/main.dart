import 'package:flutter/material.dart';
import 'package:jacksi_task/app.dart';
import 'package:jacksi_task/src/core/services/local/init_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //
  AppStorage().initStorage();

  runApp(const MyApp());
}
