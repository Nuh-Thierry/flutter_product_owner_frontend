import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImagePickerHelper {
  static Future<File?> pickImageFromGallery() async {
    final ImagePicker _imagePicker = ImagePicker();
    final XFile? pickedImage = await _imagePicker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedImage != null) {
      return File(pickedImage.path);
    } else {
      return null;
    }
  }

  static Future<File?> takePhotoWithCamera() async {
    final ImagePicker _imagePicker = ImagePicker();
    final XFile? takenImage = await _imagePicker.pickImage(
      source: ImageSource.camera,
    );

    if (takenImage != null) {
      return File(takenImage.path);
    } else {
      return null;
    }
  }
}
