import 'package:flutter/cupertino.dart';
import 'package:jacksi_task/src/core/widgets/big_text.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/view/content/catagories_list_view.dart';
 
class CatagoriesWidget extends StatefulWidget {
  const CatagoriesWidget({super.key});

  @override
  State<CatagoriesWidget> createState() => _CatagoriesWidgetState();
}

class _CatagoriesWidgetState extends State<CatagoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BigText(
          text: "التصنيفات",
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        CatagoriesListView(),
      ],
    );
  }
}
