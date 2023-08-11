import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_assets.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/core/widgets/small_text.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/controller/catagories_controller.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/model/category.dart';

class CatagoriesDropdown extends StatefulWidget {
  const CatagoriesDropdown({
    Key? key,
  }) : super(key: key);

  @override
  State<CatagoriesDropdown> createState() => _CatagoriesDropdownState();
}

class _CatagoriesDropdownState extends State<CatagoriesDropdown> {
  CatagoriesController catagoriesController = Get.put(CatagoriesController());
  @override
  void initState() {
    catagoriesController.getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CatagoriesController>(
      builder: (catagoriesController) =>
          catagoriesController.catagoriesList.isNotEmpty == true
              ? Container(
                  width: Get.width,
                  height: 60,

                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.hint),
                      borderRadius: BorderRadius.circular(14)),
                  //
                  child: DropdownButton<Catagory>(
                      iconSize: 0,
                      menuMaxHeight: Get.height * .3,
                      alignment: Alignment.center,
                      items: catagoriesController.catagoriesList
                          .map(buildMenuItems)
                          .toList(),
                      isExpanded: true,
                      value: catagoriesController.selectedCatagory,
                      underline: const SizedBox(),
                      hint: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SmallText(
                              text: "اسم التصنيف",
                              fontSize: 14,
                              fontColor: AppColors.lable,
                            ),
                            SvgPicture.asset(AppAssets.dropdown)
                          ],
                        ),
                      ),
                      onChanged: (value) {
                        catagoriesController.updateSelectedCat(value!);
                      }),
                )
              : const SizedBox(),
    );
  }
}

DropdownMenuItem<Catagory> buildMenuItems(catagory) => DropdownMenuItem(
      value: catagory,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Text(
              catagory.name,
              style: const TextStyle(color: AppColors.secondary),
            ),
          ],
        ),
      ),
    );
