import 'package:flutter/material.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';

class BigText extends StatelessWidget {
  const BigText(
      {super.key,
      required this.text,
      this.style,
      this.fontWeight,
      this.fontColor,
      this.fontSize,
      this.align});
  final String text;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final double? fontSize;
  final TextAlign? align;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.center,
      style: style ??
          TextStyle(
            color: fontColor ?? AppColors.text,
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight ?? FontWeight.bold,
          ),
    );
  }
}
