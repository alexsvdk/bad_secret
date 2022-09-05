import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../../constants.dart';
import '../../../utils/lifecycle_mixin.dart';

const _fileName = 'pass_hash.txt';

class PasscoreRepository with LifecycleMixin {
  final _apiKey;
  static final provider = Provider(
    (ref) => PasscoreRepository(
      AppConstants.apiKey,
    )..setupProviderLifecycle(ref),
  );

  late File _file;

  PasscoreRepository(this._apiKey);

  @override
  Future<void> privateInit() async {
    final directory = await getTemporaryDirectory();
    _file = File('${directory.path}/$_fileName');
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
