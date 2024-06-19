
import 'package:get/get.dart';
import 'package:sample_app_test/dashboard.dart';
import 'package:sample_app_test/home_page.dart';
import 'package:sample_app_test/profile_bottom_sheet.dart';
import 'package:sample_app_test/profile_detail_page.dart';
import 'package:sample_app_test/profile_page.dart';

abstract class AppRoutes {
  static const dashboard = '/dashboard';
  static const home = '/home';
  static const profile = '/profile';
  static const profileDetails = '/profile-details';
  static const profileBottomSheet = '/';

  static final List<GetPage> pages=[
    GetPage(name: AppRoutes.dashboard, page: ()=> Dashboard(),),
    GetPage(name: AppRoutes.home, page: ()=> HomePage(),),
    GetPage(name: AppRoutes.profile, page: ()=> ProfilePage(),),
    GetPage(name: AppRoutes.profileDetails, page: ()=> ProfileDetailPage(),),
    // GetPage(name: AppRoutes.profileBottomSheet, page: ()=> ProfileBottomSheet().profileBottomSheet(context),),
  ];
}