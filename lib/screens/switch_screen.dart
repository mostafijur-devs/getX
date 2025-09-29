import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_manegment/controller/switch_controller.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SwitchController switchController = SwitchController();
    return Scaffold(
body: Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text('Notification'),
      Obx(() =>
      Switch(value:switchController.notification.value , onChanged: switchController.changeSwitchValue,))
    ],
  ),
),
    );
  }
}
