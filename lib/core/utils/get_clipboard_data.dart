import 'package:flutter/services.dart';

Future<String?> getClipboardData() async {
  final data = await Clipboard.getData(Clipboard.kTextPlain);
  if (data != null) {
    String copiedValue = data.text!;
    return copiedValue;
  } else {
    return null;
  }
}
