import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:ecommerce_app/presentation/ui/widgets/permission_dialog.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class PermissionService {
  Future requestPhotoPermission();

  Future<bool> handlePhotosPermission(BuildContext context);

  Future requestCameraPermission();

  Future<bool> handleCameraPermission(BuildContext context);
}

class PermissionHandlerService implements PermissionService {
  final DeviceInfoPlugin deviceInfo;

  PermissionHandlerService({required this.deviceInfo});

  @override
  Future<bool> handleCameraPermission(BuildContext context) async {
    PermissionStatus cameraPermissionStatus = await requestCameraPermission();

    if (!context.mounted) return false;

    if (cameraPermissionStatus != PermissionStatus.granted) {
      permissionDialog(
        'Camera Permission',
        const Text(
            'Camera permission should Be granted to use this feature, would you like to go to app settings to give camera permission?'),
        context,
      );
      return false;
    }
    return true;
  }

  @override
  Future<bool> handlePhotosPermission(BuildContext context) async {
    PermissionStatus photosPermissionStatus = await requestPhotoPermission();

    if (!context.mounted) return false;

    if (photosPermissionStatus != PermissionStatus.granted) {
      permissionDialog(
        'Photos Permission',
        const Text(
            'Photos permission should Be granted to use this feature, would you like to go to app settings to give photos permission?'),
        context,
      );

      return false;
    }
    return true;
  }

  @override
  Future requestCameraPermission() async {
    return await Permission.camera.request();
  }

  @override
  Future requestPhotoPermission() async {
    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      final androidSdkVersion = androidInfo.version.sdkInt;

      if (androidSdkVersion > 32) {
        return await Permission.photos.request();
      }
    }
    return await Permission.storage.request();
  }
}
