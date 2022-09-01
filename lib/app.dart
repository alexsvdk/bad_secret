import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/passcode/data/repository.dart';
import 'features/passcode/domain/manager.dart';
import 'features/passcode/ui/screen.dart';
import 'features/passcode/domain/setup_manager.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        PasscodeScreenManager.provider.overrideWithValue(
          PasscodeScreenSetupManager(PasscoreRepository()),
        ),
      ],
      child: const MaterialApp(
        home: PasscodeScreen(),
      ),
    );
  }
}
