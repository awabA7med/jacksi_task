import 'package:flutter/material.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'content/catagories/view/catagories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(children: const [
        CatagoriesWidget(),
      ]),
    );
  }
}
