import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/passcode/domain/manager.dart';
import '../features/passcode/models/state.dart';
import '../features/passcode/ui/screen.dart';

class NavigationService {
  static final provider = Provider((_) => NavigationService._());

  NavigationService._();

  final navKey = GlobalKey<NavigatorState>();

  Future<void>? maybePop() => navKey.currentState?.maybePop();

  void openPasscodeScreen(
    final AutoDisposeStateNotifierProvider<PasscodeScreenManager,
            PasscodeScreenState>
        provider,
  ) {
    navKey.currentState?.push(
      MaterialPageRoute(
        builder: (_) => ProviderScope(
          overrides: [
            PasscodeScreenManager.provider.overrideWithProvider(provider),
          ],
          child: const PasscodeScreen(),
        ),
      ),
    );
  }
}
