import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/slider_color_controller.dart';

class SliderColorScreen extends StatelessWidget {
  const SliderColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SliderColorController sliderColorController = Get.put(
      SliderColorController(),
    );
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => Container(
              color: Colors.red.withValues(
                alpha: sliderColorController.opacity.value,
              ),
            ),
          ),
          Obx(
            () => Center(
              child: SizedBox(
                height: 20,
                child: Slider(
                  value: sliderColorController.opacity.value,
                  onChanged: sliderColorController.opacityManege,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
