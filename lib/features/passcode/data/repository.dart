import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../../utils/lifecycle_mixin.dart';

const _fileName = 'pass_hash.txt';

class PasscoreRepository with LifecycleMixin {
  static final provider = Provider(
    (ref) => PasscoreRepository()..setupProviderLifecycle(ref),
  );

  late File _file;

  @override
  Future<void> privateInit() async {
    final directory = await getTemporaryDirectory();
    final _file = File('${directory.path}/$_fileName');
  }

  Future<void> setHash(String hash) async {
    await init();
    if (await _file.exists()) {
      await _file.delete();
    }
    await _file.create();
    await _file.writeAsString(hash);
  }

  Future<String?> getHash() async {
    if (!await _file.exists()) {
      return null;
    }
    return _file.readAsString();
  }

  @override
  void dispose() {}
}
