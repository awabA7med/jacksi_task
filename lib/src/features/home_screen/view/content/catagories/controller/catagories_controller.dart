import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_assets.dart';
import '../model/category.dart';

class CatagoriesController extends GetxController {
  //
  List<Catagories> catagoriesList = [
    Catagories(id: 1, name: "تصنيف 1", icon: AppAssets.cat1),
    Catagories(id: 1, name: "تصنيف 2", icon: AppAssets.cat2),
    Catagories(id: 1, name: "تصنيف 3", icon: AppAssets.cat3),
  ];

  bool isLoading = true;

  // ? i'll use -1 value to all catagorys and its default value. and other catagories with index list
  int selectedCat = -1;
  //

  updateSelectCat(int cat) {
    selectedCat = cat;
    update();
  }

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
