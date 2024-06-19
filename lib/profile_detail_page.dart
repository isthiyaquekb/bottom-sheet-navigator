import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app_test/dashboard_controller.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: InkWell(
            onTap: () {
              Get.find<DashboardController>().changeBottomNavIndex(0);
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text("PROFILE DETAIL APP BAR"),
      ),
      body: const Center(
        child: Text("PROFILE DETAIL PAGE",style: TextStyle(
            fontSize: 24,fontWeight: FontWeight.w700,
            color: Colors.red
        ),),
      ),
    );
  }
}
