import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:goodaction/routes/routes.dart';
import 'package:goodaction/screen/login/login_screen.dart';



class AppRouter {
  static final router = GoRouter(
    // navigatorKey: nav,
    debugLogDiagnostics: true,
    initialLocation: '/bankAccountInfo',

    routes: [
      // User
      GoRoute(
        path: '/onboardingScreen',
        name: Routes.loginScreen.name,
       builder: (context, state) => const LoginScreen(),
      ),


    ],
  );
}