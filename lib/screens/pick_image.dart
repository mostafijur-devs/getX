import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_manegment/controller/image_picker_controller.dart';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatelessWidget {
  const PickImage({super.key});

  @override
  Widget build(BuildContext context) {
    ImagePickerController imagePickerController = Get.put(
      ImagePickerController(),
    );
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker Screens")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => CircleAvatar(
              backgroundImage: imagePickerController.imagePath.isNotEmpty
                  ? FileImage(File(imagePickerController.imagePath.toString()))
                  : null,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              imagePickerController.pickImage(ImageSource.camera);
            },
            child: Text('Open Camera'),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
//
// class ImagePickerExample extends StatefulWidget {
//   const ImagePickerExample({super.key});
//
//   @override
//   State<ImagePickerExample> createState() => _ImagePickerExampleState();
// }
//
// class _ImagePickerExampleState extends State<ImagePickerExample> {
//   final ImagePicker _picker = ImagePicker();
//   File? _image;
//   File? _video;
//
//   Future<void> _pickImage(ImageSource source) async {
//     final XFile? pickedFile = await _picker.pickImage(
//       source: source,
//       imageQuality: 70, // ছবির quality কমানো যাবে
//       maxWidth: 800, // width limit
//       maxHeight: 800, // height limit
//     );
//
//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }
//
//   Future<void> _pickVideo(ImageSource source) async {
//     final XFile? pickedVideo = await _picker.pickVideo(source: source);
//
//     if (pickedVideo != null) {
//       setState(() {
//         _video = File(pickedVideo.path);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Image Picker Example")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _image != null
//                 ? Image.file(_image!, height: 200)
//                 : const Text("No Image Selected"),
//             const SizedBox(height: 10),
//             _video != null
//                 ? Text("Video Selected: ${_video!.path.split('/').last}")
//                 : const Text("No Video Selected"),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _pickImage(ImageSource.camera),
//               child: const Text("Take Photo"),
//             ),
//             ElevatedButton(
//               onPressed: () => _pickImage(ImageSource.gallery),
//               child: const Text("Pick Image From Gallery"),
//             ),
//             ElevatedButton(
//               onPressed: () => _pickVideo(ImageSource.camera),
//               child: const Text("Record Video"),
//             ),
//             ElevatedButton(
//               onPressed: () => _pickVideo(ImageSource.gallery),
//               child: const Text("Pick Video From Gallery"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
