import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intermediate_final_project/core/helpers/extensions.dart';
import 'package:intermediate_final_project/core/theme/app_texts/app_text_styles.dart';
import 'package:intermediate_final_project/core/theme/theme_manager/theme_extensions.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: context.customAppColors.primary800,
          ),
        ),
        Spacer(),
        Text(
          text,
          style: AppTextStyles.font20SemiBold.copyWith(
            color: context.customAppColors.primary800,
          ),
        ),
        15.w.pw,
        Spacer(),
      ],
    );
  }
}
