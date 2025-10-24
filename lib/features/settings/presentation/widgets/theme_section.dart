import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/core/theming/app_colors.dart';
import 'package:intermediate_final_project/core/theming/app_styles.dart';
import 'package:intermediate_final_project/features/settings/presentation/widgets/toggle_row_section.dart';

import 'log_out_section.dart';

class ThemeSection extends StatelessWidget {
  const ThemeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Theme',
          style: Styles.boldTextStyle24.copyWith(color: AppColors.black19),
        ),
        SizedBox(height: 24.h),
        CustomRowToggleSection(
          title: 'Dark Mode',
          titleColor: AppColors.primary,
        ),

      ],
    );
  }
}
