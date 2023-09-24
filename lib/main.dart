import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'Core/utils/service_locator.dart';

import 'Core/utils/app_router.dart';

void main() {
  setupServiceLocator();
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
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      builder: DevicePreview.appBuilder,
    );
  }
}
