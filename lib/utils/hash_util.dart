import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;

class HashUtil {
  HashUtil._();

  static String hashPasscode(String passCode) {
    var content = const Utf8Encoder().convert(passCode);
    var md5 = crypto.md5;
    var digest = md5.convert(content);
    return hex.encode(digest.bytes);
  }
}
