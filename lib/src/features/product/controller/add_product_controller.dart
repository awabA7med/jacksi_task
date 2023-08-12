import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jacksi_task/src/core/utils/app_strings.dart';
import 'package:jacksi_task/src/core/utils/constants.dart';
import 'package:jacksi_task/src/core/validators/validators.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/controller/catagories_controller.dart';
import 'package:jacksi_task/src/features/product/model/images.dart';
import 'package:jacksi_task/src/features/product/model/product.dart';

//
class AddProductController extends GetxController {
  //
  List<XFile> productImages = [];

  updateProductImages(files) {
    if (files.length + productImages.length <= 4) {
      productImages.addAll(files);
    } else {
      // for example .. product images shouldnt be more than 4 images
      Constants.showErrorDialog();
    }
    update();
  }

  resetImages(images) {
    productImages = images;
    update();
  }

  //
  TextEditingController productNameController = TextEditingController();
  TextEditingController storeNameController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();

  //
  String errorProductImages = "";
  String errorProductName = "";
  String errorStoreName = "";
  String errorProductPrice = "";
  String errorCatagory = "";

  validateProductValues() {
    try {
      // product images validation ==> not empty
      if (productImages.isEmpty) {
        errorProductImages = "الرجاء ارفاق صور المنتج";
        update();
      }
      // product name validation ==> not empty

      else if (!Validators.validateTextIsNotEmpty(productNameController.text)) {
        errorProductImages = "";
        errorProductName = "الرجاء اضافة اسم المنتج";
        update();
      }

      // store name validation ==> not empty

      else if (!Validators.validateTextIsNotEmpty(storeNameController.text)) {
        errorProductImages = "";
        errorProductName = "";
        errorStoreName = "الرجاء اضافة اسم المتجر";
        update();
      }

      // product price validation ==> not empty + accept only english number

      else if (!Validators.validateTextIsNotEmpty(
          productPriceController.text)) {
        errorProductImages = "";
        errorProductName = "";
        errorStoreName = "";
        errorProductPrice = "الرجاء اضافة سعر المنتج";
        update();
      }

      // product Catagory validation ==> not null
      else if (Get.find<CatagoriesController>().selectedCatagory == null) {
        errorProductImages = "";
        errorProductName = "";
        errorStoreName = "";
        errorProductPrice = "";
        errorCatagory = "الرجاء اختيار تصنيف المنتج";
        update();
      }
      // returen true =>> all valid
      else {
        errorProductImages = "";
        errorProductName = "";
        errorStoreName = "";
        errorProductPrice = "";
        errorCatagory = "";
        update();
        return true;
      }
    } catch (e) {
      return false;
    }

    // store product
  }

  storeProduct() async {
    Box productsBox = Hive.box(AppStrings.productsBox);
    productsBox
        .add(
      Product(
        name: productNameController.text,
        storeName: storeNameController.text,
        price: num.tryParse(productPriceController.text),
        catagory: Get.find<CatagoriesController>().selectedCatagory,
        currency: "دولار",
        images: productImages
            .map((item) => Images.fromJson({"image": item.path}))
            .toList(),
      ),
    )
        .then((value) {
      log(productsBox.values.length.toString());
    });
  }
}
