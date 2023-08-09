// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:jacksi_task/src/core/utils/app_colors.dart';
// import 'package:jacksi_task/src/core/utils/app_utils.dart';
// import 'package:jacksi_task/src/core/utils/constants.dart';
// import 'package:jacksi_task/src/core/widgets/image_btn.dart';

// import 'big_text.dart';

// uploadProductImage(controller) {

//   return Container(
//     decoration: const BoxDecoration(
//         color: AppColors.primary,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         )),
//     height: Get.height * .2,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         BigText(text: '546'.tr, fontSize: 14, fontColor: Colors.white),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             InkWell(
//               onTap: () async {
//                 if (Get.isBottomSheetOpen!) {
//                   Get.back();
//                 }

//                 await AppUtils.(
//                         clientPublishedOffersController.newGoodsImagesList)
//                     .then((file) {
//                   if (file == null) {
//                     Constants.showErrorDialog( );
//                   } else if (file.length > 10) {
//                    } else {
//                     // clientPublishedOffersController.newGoodsImagesList = file;
//                     // clientPublishedOffersController
//                     //     .updateNewGoodsImageUploaded();
//                   }
//                 });
//               },
//               child: ImageBotton(icon: Icons.camera, title: '97'.tr),
//             ),
//             InkWell(
//               onTap: () async {
//                 if (Get.isBottomSheetOpen!) {
//                   Get.back();
//                 }
//                 await  AppUtils.pickImages().then((files) {
//                   if (files == null) {
//                     Constants.showSnackBar();
//                   } else if (files.length > 10) {
//                     Constants.showSeccessDialog();
//                   } else {
//                     if () {
                  
//                       controller.updateImages(files) 
//                           ;
//                     } else {
//                       clientPublishedOffersController
//                           .updateNewGoodsImageUploaded();
//                       clientPublishedOffersController.newGoodsImagesList
//                           .addAll(files);
//                     }
//                   }
//                 });
//               },
//               child: const ImageBotton(icon: Icons.image, title: "المعرض"),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
