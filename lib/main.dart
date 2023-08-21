import 'package:flutter/material.dart';
import 'package:network_provider_test/router.dart';

import 'di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        // ••• App Bar Theme: •••
      ),
      routerConfig: goRouter,
    );
  }
}
