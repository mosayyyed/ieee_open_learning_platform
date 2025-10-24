import 'package:flutter/material.dart';
import 'package:intermediate_final_project/core/theming/app_colors.dart';
import 'package:intermediate_final_project/core/theming/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showBackButton
          ? IconButton(
        icon: Icon(Icons.arrow_back_ios_new, color: AppColors.primary),
        onPressed: () => Navigator.of(context).pop(),
      )
          : null,
      title: Text(
        title,
        style: Styles.boldTextStyle20.copyWith(color: AppColors.primary),
      ),
      centerTitle: true,
      actions: actions,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
