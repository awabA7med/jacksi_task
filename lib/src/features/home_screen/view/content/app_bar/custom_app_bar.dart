import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_assets.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/core/widgets/big_text.dart';
import 'package:jacksi_task/src/features/product/view/add_product.dart';

AppBar customAppBar() {
  return AppBar(
    title: const BigText(text: "المنتجات", fontSize: 20),
    actions: [
      Padding(
        padding: EdgeInsetsDirectional.only(end: Get.width * .07),
        child: InkWell(
          onTap: () {
            Get.to(() => const AddProductScreen());
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: AppColors.hint,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(AppAssets.add),
              )),
        ),
      )
    ],
  );
}
