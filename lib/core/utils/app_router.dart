import 'package:go_router/go_router.dart';
import 'package:intermediate_final_project/features/profile/presentation/views/profile_view.dart';
import 'package:intermediate_final_project/features/settings/presentation/views/contact_us_view.dart';
import 'package:intermediate_final_project/features/settings/presentation/views/setting_view.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      //later here replace with splash screen
      GoRoute(path: '/', builder: (context, state) =>  SettingView()),
    ],
  );
}

class AppRoutePaths {
  static String get settingView => "/settingView";
  static String get profileView => "/profile_view";

}
