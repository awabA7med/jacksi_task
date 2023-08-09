import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_assets.dart';

import '../model/category.dart';

class CatagoriesController extends GetxController {
  //
  List<Catagories> catagoriesList = [
    Catagories(id: 1, name: "عرض الكل", icon: AppAssets.cat1),
    Catagories(id: 1, name: "عرض الكل", icon: AppAssets.cat1),
    Catagories(id: 1, name: "عرض الكل", icon: AppAssets.cat2),
    Catagories(id: 1, name: "عرض الكل", icon: AppAssets.cat3),
  ];

  bool isLoading = true;

  //
  getCategories() async {
    try {
      if (catagoriesList.isEmpty) {
        isLoading = true;
        update();
        // var response = await RemoteServices().postData("/categories", {});
        // if (response != null && response.data['code'] == 1) {
        //   categoriesList = (response.data["data"] as List)
        //       .map((e) => Catagories.fromJson(e))
        //       .toList();
        // update();
        isLoading = false;
      }
    } catch (e) {
      rethrow;
    }
  }
}
