import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:technical_mobile/core/color_values.dart';

class ImageUtil {
  static Future<File?> compressFile(File file) async {
    if (!file.existsSync()) {
      return null;
    }
    // Check file size
    final fileSize = await file.length();
    if (fileSize < 100 * 1024) {
      // If file size is less than 100KB, return the original file
      return file;
    }
    final result = await FlutterImageCompress.compressWithFile(
      file.absolute.path,
      quality: 90,
    );
    if (result == null) {
      return null;
    }

    return File.fromRawPath(result);
  }

  static Future<File?> cropImage(String path) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: path,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Crop Image',
          toolbarColor: ColorValues.white,
          activeControlsWidgetColor: ColorValues.primary50,
          cropFrameColor: ColorValues.primary50,
          toolbarWidgetColor: ColorValues.black,
          aspectRatioPresets: [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
          ],
        ),
        IOSUiSettings(
          title: 'Crop Image',
          aspectRatioPresets: [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
          ],
        ),
      ],
    );
    if (croppedFile == null) {
      return null;
    }
    return File(croppedFile.path);
  }
}
