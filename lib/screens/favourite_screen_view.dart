import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/favourite_controller.dart';

class FavouriteScreenView extends StatelessWidget {
  const FavouriteScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    print('hello call in buid function');

    final favouriteController = Get.put(FavouriteController());
    return Scaffold(
      body: ListView.builder(
        itemCount: favouriteController.fruitName.length,
        itemBuilder: (context, index) {
          print('hello');
          return ListTile(
            leading: Text(
              favouriteController.fruitName[index],
              style: TextStyle(fontSize: 20),
            ),
            trailing: IconButton(onPressed: () {

              if(favouriteController.tempFruitList.contains(favouriteController.fruitName[index])){
                favouriteController.removeFavorite(favouriteController.fruitName[index]);
              }else{
                favouriteController.addToFavorite(favouriteController.fruitName[index]);
              }
            }, icon: Obx(() => favouriteController.tempFruitList.contains(favouriteController.fruitName[index].toString())?Icon(Icons.favorite):Icon(Icons.favorite_border),),
          ));
        },
      ),
    );
  }
}
