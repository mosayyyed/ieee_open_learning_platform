import 'package:flutter/material.dart';
import 'package:intermediate_final_project/core/widgets/custom_app_bar.dart';

import '../widgets/contact_us_body.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Contact US'),
      body: ContactUsBody(),
    );
  }
}
