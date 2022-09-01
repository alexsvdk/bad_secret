import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin LifecycleMixin {
  bool _isInited = false;
  Completer? _initCompleter;

  Future<void> init() async {
    if (_isInited) {
      return;
    }
    if (_initCompleter != null) {
      return _initCompleter?.future;
    }

    _initCompleter = Completer();
    try {
      await privateInit();
      _isInited = true;
      _initCompleter?.complete();
    } catch (e, s) {
      _initCompleter?.completeError(e, s);
      rethrow;
    } finally {
      _initCompleter = null;
    }
  }

  @protected
  Future<void> privateInit();

  void dispose();

  void setupProviderLifecycle(ProviderRef ref) {
    init();
    ref.onDispose(dispose);
  }
}
