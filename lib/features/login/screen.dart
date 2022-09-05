import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/auth.dart';
import '../../services/navigation.dart';
import '../../theme/colors.dart';
import '../passcode/domain/setup_manager.dart';
import '../passcode/domain/validate_manager.dart';
import '../passcode/models/validation.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthorized = ref.watch(AuthService.provider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bad Secret'),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            if (!isAuthorized)
              TextButton(
                onPressed: () => ref
                    .read(NavigationService.provider)
                    .openPasscodeScreen(PasscodeScreenValidateManager.provider),
                child: const Text('Enter Password'),
              ),
            if (isAuthorized) ...[
              const Text('Your secret is shhhhhh....'),
              TextButton(
                onPressed: () => ref
                    .read(NavigationService.provider)
                    .openPasscodeScreen(PasscodeScreenSetupManager.provider),
                child: const Text('Change Password'),
              ),
            ],
            const Spacer(),
            if (isAuthorized)
              TextButton(
                onPressed: () => ref
                    .read(AuthService.provider.notifier)
                    .setIsAuthorized(false),
                child: const Text('Log out'),
              ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
