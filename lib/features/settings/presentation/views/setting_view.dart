import 'package:flutter/material.dart';
import 'package:intermediate_final_project/features/settings/presentation/widgets/setting_view_body.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Settings'),
      body: const SettingViewBody(),
    );
  }
}
