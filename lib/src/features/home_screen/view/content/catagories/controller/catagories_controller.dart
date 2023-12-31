import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_assets.dart';
import '../model/catagory.dart';

class CatagoriesController extends GetxController {
  //
  List<Catagory> catagoriesList = [
    Catagory(id: 0, name: "تصنيف 1", icon: AppAssets.cat1),
    Catagory(id: 1, name: "تصنيف 2", icon: AppAssets.cat2),
    Catagory(id: 2, name: "تصنيف 3", icon: AppAssets.cat3),
  ];

  bool isLoading = true;

  // ? i'll use -1 value to all catagorys and its default value. and other catagories with index list
  int selectedCatIndex = -1;
  //

  updateSelectCatIndex(int cat) {
    selectedCatIndex = cat;
    update();
  }

  updateSelectedCat(Catagory catagory) {
    selectedCatagory = catagory;
    update();
  }

  Catagory? selectedCatagory;
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
