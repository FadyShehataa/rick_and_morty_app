import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/Core/utils/service_locator.dart';
import 'package:rick_and_morty_app/Features/Home/data/repos/home_repo_impl.dart';

import 'Core/utils/app_router.dart';
import 'Features/Home/presentation/manager/character_cubit/character_cubit.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<CharactersCubit>(
          create: (context) => CharactersCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchCharacters(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        builder: DevicePreview.appBuilder,
      ),
    );
  }
}
