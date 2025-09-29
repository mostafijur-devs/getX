import 'package:get/get.dart';

class SliderColorController extends GetxController{

  RxDouble opacity = 0.4.obs;

  opacityManege(value){
    opacity.value = value;

  }
}