import 'dart:io';
import 'package:ecommerce_app/presentation/ui/profile/widgets/avatar_container.dart';
import 'package:ecommerce_app/presentation/ui/widgets/image_input.dart';
import 'package:flutter/material.dart';

class ProfileImageContainer extends StatefulWidget {
  const ProfileImageContainer({super.key});

  @override
  State<ProfileImageContainer> createState() => _ProfileImageContainerState();
}

class _ProfileImageContainerState extends State<ProfileImageContainer> {
  File? imageFile;

  void onAddImage(File image) {
    setState(() {
      imageFile = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ImageInput(
      onAddImage: onAddImage,
      context: context,
      inputContainer: AvatarContainer(
        imageFile: imageFile,
      ),
    );
  }
}
