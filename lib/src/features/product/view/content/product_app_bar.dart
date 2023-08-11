import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/core/widgets/big_text.dart';

AppBar productAppBar() {
  return AppBar(
    title: const BigText(text: "اضافة منتجات", fontSize: 20),
    automaticallyImplyLeading: false,
    leadingWidth: Get.width * .2,
    leading: InkWell(
      onTap: () {
        Get.back();
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20),
        child: Container(
          height: 300,
          width: Get.width * .2,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.hint)),
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
    ),
  );
}
