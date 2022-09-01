import 'package:freezed_annotation/freezed_annotation.dart';

import 'validation.dart';

part 'state.freezed.dart';

@freezed
class PasscodeScreenState with _$PasscodeScreenState {
  const factory PasscodeScreenState({
    @Default(PasscodeValidation.notValidated) PasscodeValidation validation,
    @Default('') String input,
    @Default('Введите секретный код') String title,
  }) = _PasscodeScreenState;
}
