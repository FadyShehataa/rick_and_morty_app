import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Core/utils/app_router.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const RickAndMortyApp(),
    ),
  );
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      builder: DevicePreview.appBuilder,
    );
  }
}
