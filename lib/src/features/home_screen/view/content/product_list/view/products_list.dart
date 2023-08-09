import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_assets.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/core/widgets/big_text.dart';
import 'package:jacksi_task/src/core/widgets/small_text.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/product_list/controller/products_controller.dart';

class ProductsList extends StatelessWidget {
  ProductsList({super.key});
  //
  final ProductsController productsController = Get.put(ProductsController());
  //
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GetBuilder<ProductsController>(
        builder: (productsController) => Column(
          children: [
            SizedBox(
              height: Get.height * .025,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(AppAssets.horizantal),
                      const SizedBox(
                        width: 9,
                      ),
                      const SmallText(
                        text: "تغيير عرض المنتجات الى افقي",
                        fontColor: AppColors.danger,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: productsController.productsList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: SizedBox(
                      height: Get.height * .12,
                      width: Get.width,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            height: Get.height * .12,
                            width: Get.height * .12,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                productsController
                                    .productsList[index].images![0]!.image!,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(
                                  text: productsController
                                          .productsList[index].name ??
                                      "",
                                  fontSize: 18,
                                ),
                                Row(
                                  children: [
                                    SmallText(
                                      text:
                                          " ${productsController.productsList[index].price} ",
                                      fontColor: AppColors.primary,
                                      fontSize: 20,
                                    ),
                                    SmallText(
                                      text:
                                          " ${productsController.productsList[index].currency} ",
                                      fontSize: 12,
                                    ),
                                  ],
                                ),

                                // store name badge

                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.badge,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 1),
                                    child: SmallText(
                                      text:
                                          " ${productsController.productsList[index].storeName} ",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
