import 'dart:io';

import 'package:ecommerce_app/core/theme/color_palette.dart';
import 'package:ecommerce_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

enum AppState {
  free,
  picked,
  cropped,
}

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  late AppState state;
  late File? imageFile;

  @override
  void initState() {
    super.initState();
    state = AppState.free;
    imageFile = null;
  }

  Future<void> pickImage() async {
    var pickedImg = await ImagePicker().pickImage(source: ImageSource.camera);
    imageFile = File(pickedImg!.path);
    setState(() {
      state = AppState.picked;
    });
  }

  Future<void> cropImage() async {
    var croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile!.path,
      aspectRatioPresets: Platform.isAndroid
          ? [
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio16x9
            ]
          : [
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio5x3,
              CropAspectRatioPreset.ratio5x4,
              CropAspectRatioPreset.ratio7x5,
              CropAspectRatioPreset.ratio16x9
            ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    if (croppedFile != null) {
      imageFile = File(croppedFile.path);
      setState(() {
        state = AppState.cropped;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = Theme.of(context).extension<ColorPalette>()!;
    final textTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return GestureDetector(
      onTap: () {
        if (state == AppState.free) {
          pickImage();
        } else if (state == AppState.picked) {
          cropImage();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            imageFile != null
                ? Image.file(imageFile!)
                : Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: colorPalette.grey100),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: colorPalette.black,
                    ),
                  ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Upload photo',
              style: textTheme.bodyLarge2.copyWith(color: colorPalette.black),
            )
          ],
        ),
      ),
    );
  }
}
