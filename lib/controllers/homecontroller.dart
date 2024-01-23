import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectecIndex = 0.obs;

  void changeIndex(int index) {
    selectecIndex.value = index;
  }
}
