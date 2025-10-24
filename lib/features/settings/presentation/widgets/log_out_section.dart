import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/core/theming/app_colors.dart';
import 'package:intermediate_final_project/core/theming/app_styles.dart';

class LogOutSection extends StatelessWidget {
  const LogOutSection({super.key, required this.onTap});
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 65.0.h,top: 43.h),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Icon(Icons.logout_outlined,color: AppColors.primary,size: 32.r,),
            Text('Log out',style: Styles.boldTextStyle18.copyWith(color: AppColors.primary),)
          ],
        ),
      ),
    );
  }
}
