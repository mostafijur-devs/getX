import 'package:get/get.dart';

class SwitchController extends GetxController{
   RxBool notification = false.obs;

   changeSwitchValue ( value){
     notification.value = value;
   }
}