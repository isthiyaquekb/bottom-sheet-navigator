import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app_test/dashboard_controller.dart';
import 'package:sample_app_test/home_page.dart';
import 'package:sample_app_test/profile_navigator.dart';
import 'package:sample_app_test/profile_page.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  final dashboardController = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) => Scaffold(
      body: IndexedStack(
        index: controller.selectedTabIndex.value,
        children: [
          HomePage(),
          ProfileNavigator(dashboardController:controller)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Colors.red
        ),
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        currentIndex: controller.selectedTabIndex.value,
        onTap: controller.changeBottomNavIndex,
      ),
    ),);
  }
}
