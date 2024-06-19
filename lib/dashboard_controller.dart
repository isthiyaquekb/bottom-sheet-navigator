import 'package:get/get.dart';

class DashboardController extends GetxController{
  var selectedTabIndex=0.obs;
  var navigatorIndex=0.obs;

  void changeBottomNavIndex(int index){
    selectedTabIndex.value=index;
    if(index==1){
      navigatorIndex.value=index;
    }
    update();
  }

  void changeNavigatorIndex(int index){
    navigatorIndex.value=index;
    update();
  }
}