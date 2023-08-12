import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/core/widgets/small_text.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/home_app_bar.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/product_list/controller/products_controller.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/product_list/view/products_list.dart';
import 'content/catagories/view/catagories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //

  ProductsController productsController =
      Get.put(ProductsController(), permanent: true);

  @override
  void initState() {
    productsController.getProducts(-1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      backgroundColor: AppColors.background,
      body: GetBuilder<ProductsController>(
        builder: (productsController) => Visibility(
          visible: productsController.visiblity,
          replacement: const Center(
            child: SmallText(
              text: "...",
              fontSize: 30,
            ),
          ),
          child: ListView(children: const [
            CatagoriesWidget(),
            ProductsList(),
          ]),
        ),
      ),
    );
  }
}
