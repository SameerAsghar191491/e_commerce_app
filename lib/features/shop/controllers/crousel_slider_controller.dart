import 'package:get/get.dart';

class CrouselSliderController extends GetxController {
  final sliderIndex = 0.obs;

  void updateSliderIndex(int value) {
    sliderIndex.value = value;
  }
}
