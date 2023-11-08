import 'dart:io';

import 'package:ecommerce_app/core/injector/injector.dart';
import 'package:ecommerce_app/core/media_service/media_service.dart';

import 'package:ecommerce_app/presentation/ui/profile/widgets/avatar_container.dart';
import 'package:ecommerce_app/presentation/ui/profile/widgets/image_picker_action_sheet.dart';
import 'package:flutter/cupertino.dart';

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
  final MediaServiceInterface _mediaService = getIt<MediaServiceInterface>();

  File? imageFile;

  Future<void> pickImageSource() async {
    AppImageSource? appImageSource = await showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => const ImagePickerActionSheet(),
    );
    if (appImageSource != null) {
      _getImage(appImageSource);
    }
  }

  Future _getImage(AppImageSource appImageSource) async {
    final pickedImageFile =
        await _mediaService.uploadImage(context, appImageSource);

    if (pickedImageFile != null) {
      setState(() => imageFile = pickedImageFile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AvatarContainer(
      isLoading: _isLoadingGettingImage,
      onTap: pickImageSource,
      imageFile: imageFile,
    );
  }
}
