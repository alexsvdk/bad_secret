import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../services/auth.dart';
import '../../../services/navigation.dart';
import '../../../utils/hash_util.dart';
import '../data/repository.dart';
import '../models/state.dart';
import '../models/validation.dart';
import 'manager.dart';

class PasscodeScreenValidateManager extends PasscodeScreenManager {
  static final provider = StateNotifierProvider.autoDispose<
      PasscodeScreenManager, PasscodeScreenState>(
    (ref) => PasscodeScreenValidateManager._(
      ref.watch(PasscoreRepository.provider),
      ref.watch(AuthService.provider.notifier),
      ref.watch(NavigationService.provider),
    ),
  );

  final PasscoreRepository _repository;
  final AuthService _auth;
  final NavigationService _navigation;

  PasscodeScreenValidateManager._(
    this._repository,
    this._auth,
    this._navigation,
  );

  @override
  void onSymbolTap(String symbol) {
    super.onSymbolTap(symbol);
    if (int.tryParse(symbol) != null && state.input.length < 6) {
      state = state.copyWith(input: state.input + symbol);
    } else if (symbol == 'OK') {
      _checkCode();
    }
  }

  void _checkCode() async {
    final hash = HashUtil.hashPasscode(state.input);
    final trueHash = await _repository.getHash();
    if (trueHash == null || hash == trueHash) {
      state = state.copyWith(validation: PasscodeValidation.valid);
      _auth.setIsAuthorized(true);
      await _navigation.maybePop();
    } else {
      state = state.copyWith(validation: PasscodeValidation.invalid);
    }
  }
}
