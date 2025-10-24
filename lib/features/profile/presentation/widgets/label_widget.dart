import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget({super.key, required this.labelText, required this.iconData});
 final String labelText;
 final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, color: AppColors.primary, size: 20.sp),
        SizedBox(width: 8.w),
        Text(
          labelText,
          style: Styles.textStyle20.copyWith(
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
