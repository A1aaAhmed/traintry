import 'package:flutter/material.dart';
import 'package:graduation_project_app/shared/components/appBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(context: context, text: 'Profile', morelist: false),
      body: Container(),
    );
  }
}
