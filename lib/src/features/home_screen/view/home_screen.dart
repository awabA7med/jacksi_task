import 'package:flutter/material.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/home_app_bar.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/product_list/view/products_list.dart';
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
      appBar: homeAppBar(),
      backgroundColor: AppColors.background,
      body: ListView(children: [
        const CatagoriesWidget(),
        ProductsList(),
      ]),
    );
  }
}
