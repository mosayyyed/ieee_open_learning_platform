import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intermediate_final_project/core/routing/routes.dart';
import 'package:intermediate_final_project/features/login/presentation/views/track_view.dart';
import 'package:intermediate_final_project/features/nav_bar/presentation/manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:intermediate_final_project/features/nav_bar/presentation/widgets/bottom_nav_bar.dart';

abstract class AppRouter {
  static late final GoRouter router;

  static void initRouter() {
    router = GoRouter(
      initialLocation: Routes.track,
      routes: [
        GoRoute(
          path: Routes.navbar,
          builder: (context, state) => BlocProvider(
            create: (context) => NavBarCubit(),
            child: CustomBottomNavBar(),
          ),
        ),
        GoRoute(
          path: Routes.track,
          builder: (context, state) => const TrackLevelScreen(),
        ),
      ],
    );
  }
}
