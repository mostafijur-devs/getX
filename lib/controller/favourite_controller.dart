import 'package:get/get.dart';

class FavouriteController extends GetxController{

  RxList<String> fruitName = ['Mango','Orange','Apple','Banana','Jack Fruit'].obs;

  RxList tempFruitList = [].obs;

  addToFavorite(String value){
    tempFruitList.add(value);
  }
  removeFavorite(String value){
    tempFruitList.remove(value);
  }

}