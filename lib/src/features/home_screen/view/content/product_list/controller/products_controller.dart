import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_assets.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/model/catagory.dart';
import 'package:jacksi_task/src/features/product/model/images.dart';
import 'package:jacksi_task/src/features/product/model/product.dart';

class ProductsController extends GetxController {
  //
  List<Product> productsList = [
    Product(
      id: 1,
      name: "هذا النص هو مثال لنص",
      price: 200,
      currency: "دولار",
      storeName: "اسم المتجر",
      catagory: Catagory(id: 1, name: "تصنيف 1", icon: AppAssets.cat1),
      images: [
        Images(id: 1, image: AppAssets.product1),
      ],
    ),
    Product(
      id: 2,
      name: "product 2",
      price: 130,
      storeName: "اسم المتجر",
      currency: "دولار",
      catagory: Catagory(id: 1, name: "تصنيف 1", icon: AppAssets.cat1),
      images: [
        Images(id: 1, image: AppAssets.product2),
      ],
    ),
    Product(
      id: 3,
      name: "product 3",
      price: 220,
      storeName: "اسم المتجر",
      currency: "دولار",
      catagory: Catagory(id: 2, name: "تصنيف 2", icon: AppAssets.cat2),
      images: [
        Images(id: 1, image: AppAssets.product3),
      ],
    ),
    Product(
      id: 4,
      name: "product 4",
      price: 220,
      storeName: "اسم المتجر",
      currency: "دولار",
      catagory: Catagory(id: 3, name: "تصنيف 3", icon: AppAssets.cat3),
      images: [
        Images(id: 1, image: AppAssets.product4),
      ],
    ),
  ];

  bool isLoading = true;

  getCategories() async {
    try {
      isLoading = true;
      update();
      // var response = await RemoteServices().postData("/categories", {});
      // if (response != null && response.data['code'] == 1) {
      //   categoriesList = (response.data["data"] as List)
      //       .map((e) => Catagories.fromJson(e))
      //       .toList();
      // update();
      isLoading = false;
    } catch (e) {
      rethrow;
    }
  }
}
