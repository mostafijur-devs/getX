
import 'package:get/get.dart';

class CountController extends GetxController{

  RxInt count = 0.obs;

  incrementCounter(){
    count.value++;
    print('$count Increment');

  }
}