import 'package:flutter/material.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.size,
    required this.icon,
    required this.hintText,
    required this.isObserved,
    this.suffixIcon,
    this.textEditingController,
  });

  final Size size;
  final IconData icon;
  final String hintText;
  final bool isObserved;
  final Widget? suffixIcon;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: TextFormField(
        cursorColor: AppColors.primary,
        controller: textEditingController,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            size: 18,
          ),
          suffixIcon: suffixIcon,
          prefixIconColor: Colors.black38,
          suffixIconColor: Colors.black38,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black38, fontSize: 13),
          filled: true,
          fillColor: const Color(0xfff4f4f4),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xfff4f4f4))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xfff4f4f4))),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xfff4f4f4))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xfff4f4f4))),
        ),
        obscureText: isObserved,
      ),
    );
  }
}
