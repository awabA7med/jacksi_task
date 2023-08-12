import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/product_list/view/content/product_vertical_list.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/product_list/view/content/veiw_type_btn.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          //
          SizedBox(height: Get.height * .025),
          const VeiwTypeBtn(),
          //
          SizedBox(height: Get.height * .015),
          ProductVerticalList(),
        ],
      ),
    );
  }
}
