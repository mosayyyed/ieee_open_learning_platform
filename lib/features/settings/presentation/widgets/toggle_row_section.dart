import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomRowToggleSection extends StatefulWidget {
  final String title;
  final String? subTitle;
  final bool initialValue;
  final ValueChanged<bool>? onChanged;
  final Color? titleColor;

  const CustomRowToggleSection({
    super.key,
    required this.title,
    this.subTitle,
    this.initialValue = false,
    this.onChanged,
    this.titleColor = AppColors.black19,
  });

  @override
  State<CustomRowToggleSection> createState() => _CustomRowToggleSectionState();
}

class _CustomRowToggleSectionState extends State<CustomRowToggleSection> {
  late final ValueNotifier<bool> isToggled;

  @override
  void initState() {
    super.initState();
    isToggled = ValueNotifier(widget.initialValue);
  }

  @override
  void dispose() {
    isToggled.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: Styles.textStyle24.copyWith(color: widget.titleColor),
            ),
            ValueListenableBuilder<bool>(
              valueListenable: isToggled,
              builder: (context, value, child) {
                return Switch(
                  inactiveThumbColor: AppColors.onPrimary,
                  inactiveTrackColor: const Color(0xFFBAB8B8),
                  activeTrackColor: AppColors.primary,
                  value: value,
                  onChanged: (newValue) {
                    isToggled.value = newValue;
                    widget.onChanged?.call(newValue);
                  },
                );
              },
            ),
          ],
        ),

        if (widget.subTitle != null && widget.subTitle!.isNotEmpty) ...[
          SizedBox(height: 8.h),
          Text(
            widget.subTitle!,
            style: Styles.textStyle16.copyWith(color: const Color(0xFF666666)),
          ),
        ],
      ],
    );
  }
}
