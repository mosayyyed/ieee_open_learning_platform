import 'package:flutter/material.dart';
import 'package:intermediate_final_project/core/widgets/custom_app_bar.dart';

import '../widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Profile'),
      body: const ProfileViewBody(),
    );
  }
}
