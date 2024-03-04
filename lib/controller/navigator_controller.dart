import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class NavigatorController extends GetxController{
  final selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }
}