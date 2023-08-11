import 'package:flutter/material.dart';
import 'package:jacksi_task/src/core/utils/app_colors.dart';

class PlusIcon extends StatelessWidget {
  const PlusIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(6)),
        child: const Icon(
          Icons.add,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
