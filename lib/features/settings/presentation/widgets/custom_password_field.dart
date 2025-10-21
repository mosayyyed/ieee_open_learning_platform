import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/core/widgets/custom_text_field.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Styles.textStyle20.copyWith(color: AppColors.primary),
          ),
          SizedBox(height: 6.h),
          CustomTextField(
            obscureText: true,

            contentPadding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
            borderRadius: 20.r,
          ),
        ],
      ),
    );
  }
}
