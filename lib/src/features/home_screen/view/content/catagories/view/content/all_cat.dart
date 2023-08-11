import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_assets.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/core/widgets/small_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/controller/catagories_controller.dart';

class AllCatWidget extends StatelessWidget {
  AllCatWidget({super.key});
  final CatagoriesController catagoriesController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CatagoriesController>(
      builder: (catagoriesController) => InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          catagoriesController.updateSelectCatIndex(-1);
        },
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 16),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
                border: catagoriesController.selectedCatIndex == -1
                    ? Border.all(color: AppColors.primary)
                    : null),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary),
                    height: Get.height * .08,
                    width: Get.height * .09,
                    child: SvgPicture.asset(AppAssets.allCat, fit: BoxFit.none),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: SmallText(text: "عرض الكل", fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
