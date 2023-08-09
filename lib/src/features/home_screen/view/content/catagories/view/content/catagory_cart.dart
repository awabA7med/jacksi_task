import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/core/widgets/small_text.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/controller/catagories_controller.dart';

class CatagoryCard extends StatelessWidget {
  const CatagoryCard(
      {super.key, required this.icon, required this.name, required this.index});
  final int index;
  final String icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CatagoriesController>(
      builder: (catagoriesController) => InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          catagoriesController.updateSelectCat(index);
        },
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9),
              border: catagoriesController.selectedCat == index
                  ? Border.all(color: AppColors.primary)
                  : null,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    height: Get.height * .08,
                    width: Get.height * .09,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(icon),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: SmallText(
                    text: name,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
