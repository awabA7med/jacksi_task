import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/widgets/custom_button.dart';
import 'package:jacksi_task/src/core/widgets/error_text.dart';
import 'package:jacksi_task/src/features/product/controller/add_product_controller.dart';
import 'package:jacksi_task/src/features/product/view/content/product_app_bar.dart';
import 'package:jacksi_task/src/features/product/view/content/product_catagories.dart';
import 'package:jacksi_task/src/features/product/view/content/product_form.dart';
import 'package:jacksi_task/src/features/product/view/content/product_images/product_image_picker.dart';

class AddProductScreen extends StatelessWidget {
  AddProductScreen({super.key});

  final AddProductController addProductController =
      Get.put(AddProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // product images
            ProductImagePicker(),

            // input fields
            ProductForm(),

            // catagories
            const CatagoriesDropdown(),
            errorText(addProductController.errorCatagory),

            SizedBox(height: Get.height * .015),

            // submition btn
            CustomButton(
              title: "اضافه المنتج",
              onPress: () {
                bool? isValid = addProductController.validateProductValues();
                if (isValid == true) {
                  // send data

                  addProductController.storeProduct();
                }
              },
            )
          ],
        )),
      ),
    );
  }
}
