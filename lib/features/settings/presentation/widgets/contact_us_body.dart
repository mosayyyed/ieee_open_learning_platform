import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/core/theming/app_colors.dart';
import 'package:intermediate_final_project/core/theming/app_styles.dart';
import 'package:intermediate_final_project/core/widgets/custom_elevated_button.dart';
import 'package:intermediate_final_project/core/widgets/labeled_text_field.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.0.h, left: 24.w, right: 24.w),
      child: Column(
        children: [
          LabeledTextField(
            labelWidget: Text(
              'Full name',
              style: Styles.textStyle20.copyWith(color: AppColors.primary),
            ),
          ),
          SizedBox(height: 10.h),
          LabeledTextField(
            labelWidget: Text(
              'Email address',
              style: Styles.textStyle20.copyWith(color: AppColors.primary),
            ),
          ),
          SizedBox(height: 10.h),
          LabeledTextField(
            labelWidget: Text(
              'Subject',
              style: Styles.textStyle20.copyWith(color: AppColors.primary),
            ),
            maxLength: 8,
          ),
          SizedBox(height: 32.h),
          Align(
            alignment: Alignment.centerRight,
            child: CustomElevatedButton(text: 'Send', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
