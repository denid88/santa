import 'package:flutter/material.dart';
import 'package:santa/src/presentation/navigation/app_router.dart';
import 'package:santa/src/presentation/ui_kit/theme/themes/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routerConfig: routerConfig,
    );
  }
}
