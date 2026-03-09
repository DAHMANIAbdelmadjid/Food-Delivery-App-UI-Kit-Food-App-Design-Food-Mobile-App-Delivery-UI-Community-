import 'package:go_router/go_router.dart';
import 'package:project_6/screen/Launch/launch_first_screen.dart';
import 'package:project_6/screen/Launch/launch_welcome_screen.dart';
import 'package:project_6/screen/auth/forget_password.dart';
import 'package:project_6/screen/auth/logIn.dart';
import 'package:project_6/screen/auth/new_accont.dart';
import 'package:project_6/screen/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:project_6/screen/on_boarding.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => LaunchFirstScreen()),
    GoRoute(
      path: '/launchWelcomeScreen',
      builder: (context, state) => LaunchWelcomeScreen(),
    ),
    GoRoute(path: '/on_boarding', builder: (context, state) => OnBoarding()),
    GoRoute(path: '/logIn', builder: (context, state) => LogIn()),
    GoRoute(
      path: '/forget_password',
      builder: (context, state) => ForgetPassword(),
    ),
    GoRoute(path: '/sign_up', builder: (context, state) => NewAccount()),
    GoRoute(
      path: '/navigation_bar_app',
      builder: (context, state) => NavigationBarAppSimple(),
    ),
  ],
);
