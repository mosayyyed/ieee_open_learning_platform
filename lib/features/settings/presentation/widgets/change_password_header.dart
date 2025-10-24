import 'package:flutter/material.dart';
import 'package:intermediate_final_project/core/theming/app_colors.dart';
import 'package:intermediate_final_project/core/theming/app_styles.dart';

class ChangePasswordHeader extends StatelessWidget {
  final ValueNotifier<bool> isExpanded;

  const ChangePasswordHeader({super.key, required this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => isExpanded.value = !isExpanded.value,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Change Password",
            style: Styles.textStyle20.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          ValueListenableBuilder<bool>(
            valueListenable: isExpanded,
            builder: (context, expanded, _) {
              return Icon(
                expanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: AppColors.primary,
              );
            },
          ),
        ],
      ),
    );
  }
}
