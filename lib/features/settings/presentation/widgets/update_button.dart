import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/core/theming/app_colors.dart';
import 'package:intermediate_final_project/core/theming/app_styles.dart';

class UpdateButton extends StatelessWidget {
  const UpdateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(120.w, 60.h),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      onPressed: () {
        // TODO: handle update logic
      },
      child: Text(
        "Update",
        style: Styles.boldTextStyle20.copyWith(
          color: AppColors.onPrimary,
        ),
      ),
    );
  }
}
