import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class AppUtils{
   static Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      CroppedFile? croppedImage = await ImageCropper().cropImage(
        sourcePath: image.path,
        maxWidth: 1080,
        maxHeight: 1080,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      );
      if (croppedImage != null) {
        return File(croppedImage.path).path;
      }
    }
  }

}