import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/core/theming/app_colors.dart';
import 'package:intermediate_final_project/core/theming/app_styles.dart';
import 'package:intermediate_final_project/features/profile/presentation/widgets/courses_list_view_item.dart';

class CoursesListView extends StatelessWidget {
  const CoursesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.menu_book, size: 20.sp, color: AppColors.primary),
            SizedBox(width: 8.w),
            Text(
              'Courses',
              style: Styles.boldTextStyle24.copyWith(color: AppColors.primary),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        ListView.separated(
          separatorBuilder: (_, index) => SizedBox(height: 24.h),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return CoursesListViewItem(
              courseName: 'Intro To SQL',
              startDate: '2/04/2024',
              endDate: '12/05/2024',
            );
          },
        ),

      ],
    );
  }
}
