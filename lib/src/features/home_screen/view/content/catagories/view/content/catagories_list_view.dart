import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/controller/catagories_controller.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/view/content/all_cat.dart';
import 'catagory_cart.dart';

class CatagoriesListView extends StatelessWidget {
  CatagoriesListView({super.key});
  //
  final CatagoriesController catagoriesController = Get.find();
  //
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CatagoriesController>(
      builder: (catagoriesController) => SizedBox(
        height: Get.height * .14,
        width: Get.width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: catagoriesController.catagoriesList.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Row(
                      children: [
                        AllCatWidget(),
                        CatagoryCard(
                          index: index,
                          name: catagoriesController.catagoriesList[index].name,
                          icon: catagoriesController.catagoriesList[index].icon,
                        ),
                      ],
                    )
                  : CatagoryCard(
                      index: index,
                      name: catagoriesController.catagoriesList[index].name,
                      icon: catagoriesController.catagoriesList[index].icon,
                    );
            }),
      ),
    );
  }
}
