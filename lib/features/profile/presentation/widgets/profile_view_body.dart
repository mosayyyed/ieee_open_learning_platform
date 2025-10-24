import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/features/profile/presentation/widgets/courses_list_view.dart';
import 'package:intermediate_final_project/features/profile/presentation/widgets/label_widget.dart';
import 'package:intermediate_final_project/features/profile/presentation/widgets/profile_image.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/labeled_text_field.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
          child: Column(
            children: [
              const ProfileImage(),
              SizedBox(height: 40.h),
              const LabeledTextField(
                labelWidget: LabelWidget(
                  labelText: 'Profile',
                  iconData: Icons.person,
                ),
                hintText: 'Name of person',
              ),
              SizedBox(height: 40.h),
              const LabeledTextField(
                labelWidget: LabelWidget(
                  labelText: 'Discord user Name',
                  iconData: Icons.person,
                ),
                hintText: 'Discord user',
              ),
              SizedBox(height: 40.h),
              const LabeledTextField(
                labelWidget: LabelWidget(
                  labelText: 'About me',
                  iconData: Icons.edit,
                ),
                maxLength: 5,
              ),
              SizedBox(height: 40.h),
              CoursesListView(),
            ],
          ),
        ),
      ),
    );
  }
}
