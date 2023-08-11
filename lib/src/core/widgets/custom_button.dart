import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPress,
    this.color = AppColors.primary,
    this.textColor = Colors.white,
    this.fontSize = 14,
    this.child,
    this.fontWeight,
  }) : super(key: key);

  final Color color;
  final String title;
  final VoidCallback onPress;
  final Color textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: SizedBox(
        width: Get.width,
        height: 60,
        child: TextButton(
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: color,
          ),
          onPressed: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              child ?? const SizedBox(),
              Text(
                title,
                style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight ?? FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
