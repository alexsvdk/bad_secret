import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/state.dart';

abstract class PasscodeScreenManager
    extends StateNotifier<PasscodeScreenState> {
  static final provider =
      StateNotifierProvider<PasscodeScreenManager, PasscodeScreenState>(
    (ref) => throw UnimplementedError('Provider must be overriden'),
  );

  PasscodeScreenManager([
    PasscodeScreenState initialState = const PasscodeScreenState(),
  ]) : super(initialState);

  @mustCallSuper
  void onSymbolTap(String symbol) {
    if (symbol == 'X') {
      state = const PasscodeScreenState();
    }
  }
}
