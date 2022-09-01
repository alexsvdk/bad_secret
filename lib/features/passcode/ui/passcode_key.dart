import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/manager.dart';

class PasscodeKey extends ConsumerWidget {
  final String symbol;

  const PasscodeKey(
    this.symbol, {
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          height: 70,
          minWidth: 70,
          shape: const StadiumBorder(),
          onPressed: () => ref
              .read(PasscodeScreenManager.provider.notifier)
              .onSymbolTap(symbol),
          color: Colors.grey.shade200,
          elevation: 1,
          child: Text(
            symbol,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
}
