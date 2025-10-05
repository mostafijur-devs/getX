import 'package:flutter/material.dart';
import 'package:getx_state_manegment/screens/counter_screen.dart';
import 'package:getx_state_manegment/screens/favourite_screen_view.dart';
import 'package:getx_state_manegment/screens/slider_color_screen.dart';
import 'package:getx_state_manegment/screens/switch_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          CounterScreen(title: 'Counter apps'),
          SliderColorScreen(),
          SwitchScreen(),
          FavouriteScreenView()
        ],
      ),
    );
  }
}
