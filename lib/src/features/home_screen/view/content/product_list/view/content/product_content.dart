import 'package:flutter/material.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';

import '../../../../../../../core/widgets/big_text.dart';
import '../../../../../../../core/widgets/small_text.dart';

class ProductContent extends StatelessWidget {
  const ProductContent({
    super.key,
    required this.name,
    required this.price,
    required this.storeName,
    required this.currency,
  });

  final String name;
  final String price;
  final String storeName;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: name,
            fontSize: 18,
          ),
          Row(
            children: [
              SmallText(
                text: " $price ",
                fontColor: AppColors.primary,
                fontSize: 20,
              ),
              SmallText(
                text: " $currency ",
                fontSize: 12,
              ),
            ],
          ),

          // store name badge

          Container(
            decoration: BoxDecoration(
                color: AppColors.badge, borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
              child: SmallText(
                text: storeName,
                fontSize: 10,
                fontWeight: FontWeight.w300,
              ),
            ),
          )
        ],
      ),
    );
  }
}
