// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasscodeScreenState {
  PasscodeValidation get validation => throw _privateConstructorUsedError;
  String get input => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasscodeScreenStateCopyWith<PasscodeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasscodeScreenStateCopyWith<$Res> {
  factory $PasscodeScreenStateCopyWith(
          PasscodeScreenState value, $Res Function(PasscodeScreenState) then) =
      _$PasscodeScreenStateCopyWithImpl<$Res>;
  $Res call({PasscodeValidation validation, String input, String title});
}

/// @nodoc
class _$PasscodeScreenStateCopyWithImpl<$Res>
    implements $PasscodeScreenStateCopyWith<$Res> {
  _$PasscodeScreenStateCopyWithImpl(this._value, this._then);

  final PasscodeScreenState _value;
  // ignore: unused_field
  final $Res Function(PasscodeScreenState) _then;

  @override
  $Res call({
    Object? validation = freezed,
    Object? input = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      validation: validation == freezed
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as PasscodeValidation,
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PasscodeScreenStateCopyWith<$Res>
    implements $PasscodeScreenStateCopyWith<$Res> {
  factory _$$_PasscodeScreenStateCopyWith(_$_PasscodeScreenState value,
          $Res Function(_$_PasscodeScreenState) then) =
      __$$_PasscodeScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({PasscodeValidation validation, String input, String title});
}

/// @nodoc
class __$$_PasscodeScreenStateCopyWithImpl<$Res>
    extends _$PasscodeScreenStateCopyWithImpl<$Res>
    implements _$$_PasscodeScreenStateCopyWith<$Res> {
  __$$_PasscodeScreenStateCopyWithImpl(_$_PasscodeScreenState _value,
      $Res Function(_$_PasscodeScreenState) _then)
      : super(_value, (v) => _then(v as _$_PasscodeScreenState));

  @override
  _$_PasscodeScreenState get _value => super._value as _$_PasscodeScreenState;

  @override
  $Res call({
    Object? validation = freezed,
    Object? input = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_PasscodeScreenState(
      validation: validation == freezed
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as PasscodeValidation,
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasscodeScreenState implements _PasscodeScreenState {
  const _$_PasscodeScreenState(
      {this.validation = PasscodeValidation.notValidated,
      this.input = '',
      this.title = 'Введите секретный код'});

  @override
  @JsonKey()
  final PasscodeValidation validation;
  @override
  @JsonKey()
  final String input;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'PasscodeScreenState(validation: $validation, input: $input, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasscodeScreenState &&
            const DeepCollectionEquality()
                .equals(other.validation, validation) &&
            const DeepCollectionEquality().equals(other.input, input) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(validation),
      const DeepCollectionEquality().hash(input),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_PasscodeScreenStateCopyWith<_$_PasscodeScreenState> get copyWith =>
      __$$_PasscodeScreenStateCopyWithImpl<_$_PasscodeScreenState>(
          this, _$identity);
}

abstract class _PasscodeScreenState implements PasscodeScreenState {
  const factory _PasscodeScreenState(
      {final PasscodeValidation validation,
      final String input,
      final String title}) = _$_PasscodeScreenState;

  @override
  PasscodeValidation get validation;
  @override
  String get input;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_PasscodeScreenStateCopyWith<_$_PasscodeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
