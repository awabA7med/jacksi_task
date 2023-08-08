import 'package:flutter/material.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';

import 'small_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.size,
    required this.text,
    this.onTap,
    this.color,
    this.borderColor,
    this.width,
    this.height,
    this.fontSize,
    this.radius,
  });

  final Size size;
  final String text;
  final Function()? onTap;
  final Color? color;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? fontSize;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? size.width * 0.8,
        height: height ?? size.height * 0.06,
        decoration: BoxDecoration(
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 20),
          ),
        ),
        child: Center(
          child: SmallText(
            text: text,
            fontSize: fontSize,
            fontColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
