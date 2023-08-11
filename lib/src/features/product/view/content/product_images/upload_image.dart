import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/core/utils/app_utils.dart';
import 'package:jacksi_task/src/core/widgets/image_btn.dart';
import 'package:jacksi_task/src/features/product/controller/add_product_controller.dart';
import '../../../../../core/widgets/big_text.dart';

uploadProductImage() {
  AddProductController addProductController = Get.find();
  return Container(
    decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
    height: Get.height * .2,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const BigText(
            text: 'اختيار الصورة', fontSize: 14, fontColor: Colors.white),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // here the image source is cameira
            InkWell(
              onTap: () async {
                if (Get.isBottomSheetOpen!) {
                  Get.back();
                }
                var images = await AppUtils.captureImage(
                    addProductController.productImages);
                //
                addProductController.resetImages(images);
              },
              child: const ImageBotton(icon: Icons.camera, title: 'الكاميرة'),
            ),

            // here the image source is Galary

            InkWell(
              onTap: () async {
                if (Get.isBottomSheetOpen!) {
                  Get.back();
                }
                await AppUtils.pickImages().then((files) {
                  if (files != null) {
                    addProductController.updateProductImages(files);
                    log(addProductController.productImages.length.toString());
                  }
                });
              },
              child: const ImageBotton(icon: Icons.image, title: "المعرض"),
            ),
          ],
        ),
      ],
    ),
  );
}
