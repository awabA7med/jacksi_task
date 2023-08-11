import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/features/product/controller/add_product_controller.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/error_text.dart';
import '../../../../core/widgets/small_text.dart';

class ProductForm extends StatelessWidget {
  ProductForm({super.key});

  final AddProductController addProductController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
      builder: (addProductController) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * .025,
          ),

          // product name part

          const SmallText(
            text: "اسم المنتج",
            fontSize: 16,
          ),
          const SizedBox(
            height: 6,
          ),
          CustomTextField(
            maxLength: 30,
            hintText: "اسم المنتج",
            textEditingController: addProductController.productNameController,
          ),
          errorText(addProductController.errorProductName),

          // store name part

          const SmallText(
            text: "اسم المتجر",
            fontSize: 16,
          ),
          const SizedBox(
            height: 6,
          ),
          CustomTextField(
            maxLength: 30,
            hintText: "اسم المتجر",
            textEditingController: addProductController.storeNameController,
          ),
          errorText(addProductController.errorStoreName),

          // price name part

          const SmallText(
            text: "السعر",
            fontSize: 16,
          ),
          const SizedBox(
            height: 6,
          ),
          CustomTextField(
            maxLength: 30,
            hintText: "السعر",
            textEditingController: addProductController.productPriceController,
          ),
          errorText(addProductController.errorProductPrice),

          //
        ],
      ),
    );
  }
}
