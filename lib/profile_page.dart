import 'package:flutter/material.dart';
import 'package:sample_app_test/profile_detail_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ProfileDetailPage();
        },)),
        child: const Center(
          child: Text("PROFILE PAGE"),
        ),
      ),
    );
  }
}
