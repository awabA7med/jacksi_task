import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/widgets/small_text.dart';

class CatagoryCard extends StatelessWidget {
  const CatagoryCard({super.key, required this.icon, required this.name});
  final String icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        children: [
          Image.asset(
            icon,
            height: Get.height * .1,
            width: Get.height * .1,
          ),
          SmallText(
            text: name,
            fontSize: 12,
          )
        ],
      ),
    );
  }
}
