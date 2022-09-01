import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/hash_util.dart';
import '../data/repository.dart';
import '../models/state.dart';
import 'manager.dart';

class PasscodeScreenSetupManager extends PasscodeScreenManager {
  static final provider = Provider(
    (ref) => PasscodeScreenSetupManager(ref.watch(PasscoreRepository.provider)),
  );

  final PasscoreRepository _repository;

  PasscodeScreenSetupManager(this._repository)
      : super(const PasscodeScreenState(title: 'Придумайте код'));

  @override
  void onSymbolTap(String symbol) {
    super.onSymbolTap(symbol);
    if (int.tryParse(symbol) != null && state.input.length < 6) {
      state = state.copyWith(input: state.input + symbol);
    } else if (symbol == 'OK') {
      _saveCode();
    }
  }

  void _saveCode() {
    final hash = HashUtil.hashPasscode(state.input);
    _repository.setHash(hash);
  }
}
