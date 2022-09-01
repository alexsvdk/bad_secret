import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/validation.dart';
import 'passcode_key.dart';
import '../domain/manager.dart';

const _symbols = ['1', '2', '3', '4', '5', '6', '7', '8', '9', 'X', '0', 'OK'];

class PasscodeScreen extends ConsumerWidget {
  const PasscodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(PasscodeScreenManager.provider);

    return Scaffold(
      appBar: AppBar(
        title: Text(state.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Text(
              state.input,
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (state.validation == PasscodeValidation.invalid)
              const Text(
                'Неверный код',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                ),
              ),
            const Spacer(),
            for (var i = 0; i < _symbols.length; i += 3)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var j = i; j < i + 3; j++) PasscodeKey(_symbols[j]),
                ],
              ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
