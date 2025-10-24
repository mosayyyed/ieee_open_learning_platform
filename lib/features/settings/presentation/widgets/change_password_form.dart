import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/core/widgets/custom_elevated_button.dart';
import 'package:intermediate_final_project/core/widgets/labeled_text_field.dart';

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabeledTextField(labelWidget: Text("Current Password"),),
        SizedBox(height: 12.h),
        const LabeledTextField(labelWidget: Text("New Password"), ),
        SizedBox(height: 12.h),
        const LabeledTextField(labelWidget: Text("Confirm Password"),),
        SizedBox(height: 20.h),
        Align(
          alignment: Alignment.centerRight,
          child: CustomElevatedButton(text: 'Update', onPressed: (){}),
        ),
      ],
    );
  }
}
