import 'dart:io';
import 'package:hive_flutter/adapters.dart';
import 'package:jacksi_task/src/core/utils/app_strings.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/model/catagory.dart';
import 'package:jacksi_task/src/features/product/model/images.dart';
import 'package:jacksi_task/src/features/product/model/product.dart';
import 'package:path_provider/path_provider.dart';

class AppStorage {
  initStorage() async {
    //
    Directory dir = await getApplicationDocumentsDirectory();
    //
    await Hive.initFlutter(dir.path);
    //
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ImagesAdapter());
    Hive.registerAdapter(CatagoryAdapter());
    //
    await Hive.openBox<Product>(AppStrings.productsBox);
    await Hive.openBox<Images>(AppStrings.imagesBox);
    await Hive.openBox<Catagory>(AppStrings.catagoriesBox);
  }
}
