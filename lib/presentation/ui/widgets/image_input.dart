import 'dart:io';
import 'package:ecommerce_app/core/injector/injector.dart';
import 'package:ecommerce_app/core/media_service/media_service.dart';
import 'package:ecommerce_app/presentation/ui/widgets/image_picker_action_sheet.dart';
import 'package:flutter/cupertino.dart';

class ImageInput extends StatelessWidget {
  ImageInput({
    super.key,
    required this.onAddImage,
    required this.context,
    required this.inputContainer,
  });

  final void Function(File image) onAddImage;
  final BuildContext context;
  final MediaServiceInterface mediaService = getIt<MediaServiceInterface>();
  final Widget inputContainer;

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
        await mediaService.uploadImage(context, appImageSource);

    if (pickedImageFile != null) {
      onAddImage(pickedImageFile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pickImageSource,
      child: inputContainer,
    );
  }
}
