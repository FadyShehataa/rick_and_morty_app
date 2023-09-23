import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/views/home_view.dart';
import 'package:rick_and_morty_app/Features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) =>  HomeView(),
      ),
    ],
  );
}
