import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_app/Core/utils/service_locator.dart';
import 'package:rick_and_morty_app/Features/Home/data/models/character/result.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/views/character_details_view.dart';
import 'package:rick_and_morty_app/Features/Splash/presentation/views/splash_view.dart';

import '../../Features/Home/data/repos/home_repo_impl.dart';
import '../../Features/Home/presentation/manager/character_cubit/character_cubit.dart';
import '../../Features/Home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kCharacterDetailsView = '/characterDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => BlocProvider(
          create: (context) => CharactersCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchCharacters(),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: kCharacterDetailsView,
        builder: (context, state) => CharacterDetailsView(
          characterResultModel: state.extra! as Result,
        ),
      ),
    ],
  );
}
