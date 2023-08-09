import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_assets.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/controller/catagories_controller.dart';

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
        height: Get.height * .15,
        width: Get.width,
        child: Row(
          children: [
            const CatagoryCard(
              name: "عرض الكل",
              icon: AppAssets.cat1,
            ),
            Flexible(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catagoriesController.catagoriesList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CatagoryCard(
                          icon: catagoriesController.catagoriesList[index].icon,
                          name:
                              catagoriesController.catagoriesList[index].name),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
