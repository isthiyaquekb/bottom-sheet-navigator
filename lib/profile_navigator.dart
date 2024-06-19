import 'package:flutter/material.dart';
import 'package:sample_app_test/app_routes.dart';
import 'package:sample_app_test/dashboard_controller.dart';
import 'package:sample_app_test/profile_bottom_sheet.dart';
import 'package:sample_app_test/profile_detail_page.dart';
import 'package:sample_app_test/profile_page.dart';

class ProfileNavigator extends StatelessWidget {
  final DashboardController dashboardController;

  const ProfileNavigator({super.key, required this.dashboardController});

  @override
  Widget build(BuildContext context) {
    switch (dashboardController.navigatorIndex.value) {
      case 1:
        Future.delayed(
          const Duration(milliseconds: 100),
              () =>
              ProfileBottomSheet().profileBottomSheet(context),
        );
        return const SizedBox();
      case 2: // Assuming ProfileDetailPage is at index 2
        return const ProfileDetailPage();
      default:
        return const SizedBox();
    }
  }
}
