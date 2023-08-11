import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AppUtils {
  static Future<List<XFile>?> pickImages() async {
    try {
      List<XFile>? files =
          await ImagePicker().pickMultiImage(requestFullMetadata: false);

      if (files.isNotEmpty) {
        return files;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static captureImage(List<XFile> images) async {
    try {
      var file = await ImagePicker()
          .pickImage(source: ImageSource.camera, requestFullMetadata: false);

      if (file != null && images.contains(XFile(file.path)) == false) {
        images.add(XFile(file.path));
        Get.snackbar("نجاح", "تمت اضافة صورة بنجاح");
      }
      if (Get.isBottomSheetOpen!) {
        Get.back();
      }

      return images;
    } catch (e) {
      rethrow;
    }
  }

  static deleteImage(XFile image, List<XFile> images) async {
    try {
      images.removeWhere((element) => element == image);
      Get.snackbar('نجاح', 'تم حذف الصورة بنجاح');
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
