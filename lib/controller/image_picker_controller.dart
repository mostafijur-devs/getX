import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final ImagePicker _imagePicker = ImagePicker();

  final RxString imagePath = ''.obs;

 Future pickImage(ImageSource source) async {
    final image = await _imagePicker.pickImage(
      source: source,
      imageQuality: 80,
    );

    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}
