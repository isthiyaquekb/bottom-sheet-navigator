import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app_test/app_routes.dart';
import 'package:sample_app_test/dashboard_controller.dart';
import 'package:sample_app_test/profile_detail_page.dart';

class ProfileBottomSheet {
  profileBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.indigo.shade300,
      isScrollControlled: true,
      isDismissible: false,
      useRootNavigator: true,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Get.find<DashboardController>().changeNavigatorIndex(2);
              },
              child: Container(
                height: 120,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black26)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("THIS IS BOTTOM SHEET",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.red
                    ),),
                    SizedBox(height: 30,),
                    Text("GO TO PROFILE DETAIL PAGE",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    ),),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
