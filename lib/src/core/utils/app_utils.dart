import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AppUtils {
  static Future<List<XFile>?> pickImages() async {
    try {
      List<XFile>? files = await ImagePicker().pickMultiImage(
        requestFullMetadata: false,
      );

      if (files.isNotEmpty) {
        return files;
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  static captureImage(List<XFile> images) async {
    try {
      var file = await ImagePicker()
          .pickImage(source: ImageSource.camera, requestFullMetadata: false);

      if (file != null && images.contains(XFile(file.path)) == false) {
        images.add(XFile(file.path));
        Get.snackbar("نجاح", "تمت اضافة صورة بنجاح");
      } else {
        return null;
      }
      if (Get.isBottomSheetOpen!) {
        Get.back();
      }

      return images;
    } catch (e) {
      Get.snackbar('8'.tr, "764".tr);
      return null;
    }
  }

  static reanimateCameraImage(XFile image, List<XFile> images) async {
    try {
      images.removeWhere((element) => element == image);
      if (Get.isBottomSheetOpen!) {
        Get.back();
      }
      Get.snackbar('765'.tr, '768'.tr);
      return images;
    } catch (e) {
      return null;
    }
  }

  static showFile({path, title}) {}

  static copyText(value) async {}

  static playSound() {}

  static makeScreenShot() async {}

  static makeQrCode(String url) {}
}
