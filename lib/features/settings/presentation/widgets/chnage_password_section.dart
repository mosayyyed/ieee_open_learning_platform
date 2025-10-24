import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'change_password_form.dart';
import 'change_password_header.dart';

class ChangePasswordSection extends StatefulWidget {
  const ChangePasswordSection({super.key});

  @override
  State<ChangePasswordSection> createState() => _ChangePasswordSectionState();
}

class _ChangePasswordSectionState extends State<ChangePasswordSection> {
  final ValueNotifier<bool> isExpanded = ValueNotifier(false);

  @override
  void dispose() {
    isExpanded.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChangePasswordHeader(isExpanded: isExpanded),
        ValueListenableBuilder<bool>(
          valueListenable: isExpanded,
          builder: (context, expanded, _) {
            return AnimatedCrossFade(
              duration: const Duration(milliseconds: 800),
              firstChild: const SizedBox.shrink(),
              secondChild: Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: const ChangePasswordForm(),
              ),
              crossFadeState: expanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
            );
          },
        ),
      ],
    );
  }
}
