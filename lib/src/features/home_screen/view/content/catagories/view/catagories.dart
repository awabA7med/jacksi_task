import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/widgets/big_text.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/view/content/catagories_list_view.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/controller/catagories_controller.dart';

class CatagoriesWidget extends StatefulWidget {
  const CatagoriesWidget({super.key});

  @override
  State<CatagoriesWidget> createState() => _CatagoriesWidgetState();
}

class _CatagoriesWidgetState extends State<CatagoriesWidget> {
  CatagoriesController catagoriesController = Get.put(CatagoriesController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: BigText(
            text: "التصنيفات",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        CatagoriesListView(),
      ],
    );
  }
}
