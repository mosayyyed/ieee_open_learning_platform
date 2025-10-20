import 'package:go_router/go_router.dart';
import 'package:intermediate_final_project/features/settings/presentation/views/setting_view.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      //later here replace with splash screen
      GoRoute(path: '/', builder: (context, state) => const SettingView()),
    ],
  );
}

class AppRoutePaths {
  // static String get settingView => "/settingView";
}
