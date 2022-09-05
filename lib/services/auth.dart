import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthService extends StateNotifier<bool> {
  static final provider = StateNotifierProvider<AuthService, bool>(
    (_) => AuthService._(),
  );

  AuthService._() : super(false);

  @override
  bool get state => super.state;

  void setIsAuthorized(bool value) {
    state = value;
  }
}
