import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../services/navigation.dart';
import '../../../utils/hash_util.dart';
import '../data/repository.dart';
import '../models/state.dart';
import 'manager.dart';

class PasscodeScreenSetupManager extends PasscodeScreenManager {
  static final provider = StateNotifierProvider.autoDispose<
      PasscodeScreenManager, PasscodeScreenState>(
    (ref) => PasscodeScreenSetupManager._(
      ref.watch(PasscoreRepository.provider),
      ref.watch(NavigationService.provider),
    ),
  );

  final PasscoreRepository _repository;
  final NavigationService _navigationService;

  PasscodeScreenSetupManager._(
    this._repository,
    this._navigationService,
  ) : super(
          const PasscodeScreenState(title: 'Придумайте код'),
        );

  @override
  void onSymbolTap(String symbol) {
    super.onSymbolTap(symbol);
    if (int.tryParse(symbol) != null && state.input.length < 6) {
      state = state.copyWith(input: state.input + symbol);
    } else if (symbol == 'OK') {
      _saveCode();
    }
  }

  void _saveCode() async {
    final hash = HashUtil.hashPasscode(state.input);
    await _repository.setHash(hash);
    await _navigationService.maybePop();
  }
}
