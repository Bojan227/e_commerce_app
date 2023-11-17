import 'dart:convert';
import 'dart:typed_data';

Uint8List decodeBase64String(String base64String) {
  return base64Decode(base64String);
}

String base64String(Uint8List data) {
  return base64Encode(data);
}

List<Uint8List> decodeBase64Images(List<dynamic> images) {
  return images.map((image) => decodeBase64String(image)).toList();
}
