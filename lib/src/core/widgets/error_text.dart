import 'package:flutter/material.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';
import 'package:jacksi_task/src/core/widgets/small_text.dart';

Widget errorText(String? errorMsg) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SmallText(
          text: errorMsg ?? '',
          fontSize: 12,
          fontColor: AppColors.danger,
        ),
        const SizedBox(
          width: 5,
        ),
        errorMsg != null && errorMsg != ""
            ? const Icon(
                Icons.keyboard_arrow_up_sharp,
                color: AppColors.danger,
              )
            : const SizedBox()
      ],
    ),
  );
}
