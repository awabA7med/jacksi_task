import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/widgets/small_text.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/product_list/controller/products_controller.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/product_list/view/content/image_viewer.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/product_list/view/content/product_content.dart';

class ProductVerticalList extends StatelessWidget {
  ProductVerticalList({
    super.key,
  });

  final ProductsController productsController = Get.find();
  @override
  Widget build(BuildContext context) {
    return productsController.productsList.isNotEmpty
        ? ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: productsController.productsList.length,
            itemBuilder: (context, index) {
              return productsController.productsList[index] != null
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: SizedBox(
                        height: Get.height * .12,
                        width: Get.width,
                        child: Row(
                          children: [
                            // Image part

                            ImageViewer(
                                image: productsController
                                    .productsList[index]!.images![0]!.image!),
                            const SizedBox(width: 14),

                            ProductContent(
                              name: productsController
                                      .productsList[index]!.name ??
                                  "",
                              storeName: productsController
                                  .productsList[index]!.storeName!,
                              currency: productsController
                                  .productsList[index]!.currency!,
                              price: productsController
                                  .productsList[index]!.price
                                  .toString(),
                            ),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox();
            },
          )
        : const Center(
            child: SmallText(text: "لا توجد منتجات مضافه"),
          );
  }
}
