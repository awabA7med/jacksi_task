import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:jacksi_task/src/config/app_settings.dart';
import 'package:jacksi_task/src/features/product/model/product.dart';
import '../../../../../../core/utils/app_strings.dart';

class ProductsController extends GetxController {
  //
  List<Product?> productsList = [];

  bool visiblity = false;

  getProducts(catIndex) async {
    try {
      // visiblity == false ? visiblity = true : null;
      // update();
      //

      productsList.clear();

      //
      // here is example if we have backend
      if (Get.find<AppSettings>().hasConnection.value == true) {
        // get Data from remote data sourse

        Box productsBox = Hive.box<Product>(AppStrings.productsBox);
        // productsBox.clear();
        List<Product?> responseList = productsBox.keys.map((key) {
          Product product = productsBox.get(key);
          if (catIndex == -1) {
            // means user want all catagories
            return product;
          } else if (product.catagory!.id == catIndex) {
            return product;
          }
        }).toList();
        responseList.isNotEmpty
            ? productsList = responseList
            : productsList.clear();
      } else {
        // get data from local data source

        Box productsBox = Hive.box<Product>(AppStrings.productsBox);
        List<Product?> responseList = productsBox.keys.map((key) {
          Product product = productsBox.get(key);
          if (catIndex == -1) {
            // means user want all catagories
            return product;
          } else if (product.catagory!.id == catIndex) {
            return product;
          }
        }).toList();
        responseList.isNotEmpty
            ? productsList = responseList
            : productsList.clear();
      }

      Future.delayed(const Duration(seconds: 2)).then((value) {
        visiblity = true;
        update();
      });

      //
    } catch (e) {
      rethrow;
    }
  }
}
