import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/core/theming/app_colors.dart';
import 'package:intermediate_final_project/core/theming/app_styles.dart';

class CoursesListViewItem extends StatelessWidget {
  const CoursesListViewItem({
    super.key,
    required this.courseName,
    required this.startDate,
    required this.endDate,
  });

  final String courseName, startDate, endDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0xFFB3B3B3)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                courseName,
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                startDate,
                style: Styles.textStyle16.copyWith(
                  color: const Color(0xFF666666),
                ),
              ),
              Text(
                endDate,
                style: Styles.textStyle16.copyWith(
                  color: const Color(0xFF666666),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 8.w),
              height: 43.h,
              width: 119.w,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Text(
                'More details',
                style: Styles.boldTextStyle16.copyWith(color: AppColors.primary),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
