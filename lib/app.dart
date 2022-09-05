import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/login/screen.dart';
import 'services/navigation.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (context, ref, chid) {
          final navKey = ref.watch(NavigationService.provider).navKey;
          return MaterialApp(
            navigatorKey: navKey,
            home: chid,
          );
        },
        child: const LoginScreen(),
      ),
    );
  }
}
