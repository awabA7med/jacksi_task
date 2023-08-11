import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    required this.maxLength,
    this.keyboardType = TextInputType.text,
  });

  final String hintText;
  final TextEditingController? textEditingController;
  final int maxLength;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 60, //
      child: TextFormField(
        textInputAction: TextInputAction.done,
        controller: textEditingController,
        cursorColor: AppColors.primary,
        keyboardType: keyboardType,
        maxLength: maxLength,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          counterText: "",
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: AppColors.hint, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: AppColors.primary, width: 1),
          ),
        ),
      ),
    );
  }
}
