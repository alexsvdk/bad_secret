import '../data/repository.dart';
import 'manager.dart';

class PasscodeScreenValidateManager extends PasscodeScreenManager {
  final PasscoreRepository _repository;

  PasscodeScreenValidateManager(this._repository);

  @override
  void onSymbolTap(String symbol) {
    super.onSymbolTap(symbol);
    if (int.tryParse(symbol) != null && state.input.length < 6) {
      state = state.copyWith(input: state.input + symbol);
    } else if (symbol == 'OK') {
      _checkCode();
    }
  }

  void _checkCode() async {}
}
