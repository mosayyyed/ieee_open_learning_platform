import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class LabeledTextField extends StatelessWidget {
  final Widget labelWidget;
  final bool obscureText;
  final String? hintText;
  final TextEditingController? controller;
  final int? maxLength;

  const LabeledTextField({
    super.key,
    required this.labelWidget,
    this.obscureText = false,
    this.hintText,
    this.controller, this.maxLength = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelWidget,
        const SizedBox(height: 8),
        CustomTextField(
          obscureText: obscureText,
          hintText: hintText,
          controller: controller,
          maxLines:maxLength,
        ),
      ],
    );
  }
}
