import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_assets.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/core/utils/app_utils.dart';
import 'package:jacksi_task/src/core/widgets/custom_button.dart';
import 'package:jacksi_task/src/core/widgets/error_text.dart';
import 'package:jacksi_task/src/core/widgets/small_text.dart';
import 'package:jacksi_task/src/features/product/controller/add_product_controller.dart';
import 'package:jacksi_task/src/features/product/view/content/product_images/plus_icon.dart';
import 'package:jacksi_task/src/features/product/view/content/product_images/upload_image.dart';

class ProductImagePicker extends StatelessWidget {
  ProductImagePicker({
    Key? key,
  }) : super(key: key);

  final AddProductController addProductController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
      builder: (addProductController) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SmallText(text: "صور المنتج", fontSize: 16),
          const SizedBox(height: 13),
          //
          SizedBox(
            height: Get.width * .22,
            width: Get.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return index < addProductController.productImages.length
                      ? Padding(
                          padding: const EdgeInsetsDirectional.only(end: 5),
                          child: Container(
                            height: Get.width * .22,
                            width: Get.width * .22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.file(
                                    File(
                                      addProductController
                                          .productImages[index].path,
                                    ),
                                    height: Get.width * .22,
                                    width: Get.width * .22,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                    alignment: AlignmentDirectional.topEnd,
                                    child: InkWell(
                                        onTap: () async {
                                          var images =
                                              await AppUtils.deleteImage(
                                                  addProductController
                                                      .productImages[index],
                                                  addProductController
                                                      .productImages);

                                          addProductController
                                              .resetImages(images);
                                        },
                                        child: SvgPicture.asset(
                                            AppAssets.delete))),
                              ],
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsetsDirectional.only(end: 5),
                          child: Container(
                            height: Get.width * .22,
                            width: Get.width * .22,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: AppColors.hint),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        );
                }),
          ),
          const SizedBox(
            height: 14,
          ),
          //
          CustomButton(
            title: "اضغط لاضافة الصور",
            child: const PlusIcon(),
            onPress: () {
              Get.bottomSheet(uploadProductImage());
            },
          ),

          errorText(addProductController.errorProductImages)
        ],
      ),
    );
  }
}
