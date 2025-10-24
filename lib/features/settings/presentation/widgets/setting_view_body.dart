import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/core/theming/app_colors.dart';
import 'package:intermediate_final_project/core/theming/app_styles.dart';
import 'package:intermediate_final_project/features/settings/presentation/widgets/chnage_password_section.dart';
import 'package:intermediate_final_project/features/settings/presentation/widgets/theme_section.dart';

import 'log_out_section.dart';
import 'toggle_row_section.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notifications',
                style: Styles.boldTextStyle24.copyWith(
                  color: AppColors.black19,
                ),
              ),
              SizedBox(height: 40.h),
              CustomRowToggleSection(
                title: 'Email Notification',
                subTitle:
                    'Get email to find out what’s going on when you’re offline. You can turn these off',
                onChanged: (value) {
                  ///here add request to display notification
                  debugPrint(value.toString());
                },
              ),
              SizedBox(height: 32.h),
              CustomRowToggleSection(
                title: 'Reminder',
                subTitle:
                    'These are notification to remind you of tasks you might have missed.',
                onChanged: (value) {
                  ///here add request to display notification
                  debugPrint(value.toString());
                },
              ),
              SizedBox(height: 40.h),
              const ChangePasswordSection(),
              SizedBox(height: 32.h),
              const ThemeSection(),
              SizedBox(height: 24),
              LogOutSection(
                onTap: () {
                  //TODO add here logic for logout
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
