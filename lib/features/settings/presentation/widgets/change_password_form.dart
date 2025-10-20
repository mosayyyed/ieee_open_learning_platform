import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/features/settings/presentation/widgets/custom_password_field.dart';

import 'update_button.dart';
class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomPasswordField(label: "Current Password"),
        SizedBox(height: 12.h),
        const CustomPasswordField(label: "New Password"),
        SizedBox(height: 12.h),
        const CustomPasswordField(label: "Confirm Password"),
        SizedBox(height: 20.h),
        Align(
          alignment: Alignment.centerRight,
          child: UpdateButton(),
        ),
      ],
    );
  }
}
