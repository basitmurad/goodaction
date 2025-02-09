import 'package:go_router/go_router.dart';
import 'package:goodaction/routes/routes.dart';
import 'package:goodaction/screen/initiatives/screens/donation_detail_screen.dart';
import 'package:goodaction/screen/login/login_screen.dart';
import 'package:goodaction/screen/post/post.dart';
import 'package:goodaction/screen/sign_up/signup_screen.dart';
import 'package:goodaction/screen/splash.dart';

import '../navigation_menu.dart';
import '../screen/dashboard/post_detail.dart';
import '../screen/forget_password/email_send_send_screen.dart';
import '../screen/forget_password/forget_password.dart';
import '../screen/initiatives/screens/donation_now_screen.dart';
import '../screen/initiatives/screens/payment_detail_screen.dart';
import '../screen/initiatives/screens/payment_success_screen.dart';
import '../screen/location/location_screen.dart';



class AppRouter {
  static final router = GoRouter(
    // navigatorKey: nav,
    debugLogDiagnostics: true,
    initialLocation: '/splash',

    routes: [
      // User
      GoRoute(
        path: '/splash',
        name: Routes.splash.name,
       builder: (context, state) => const Splash(),
      ),
      GoRoute(
        path: '/loginScreen',
        name: Routes.loginScreen.name,
       builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/navigation',
        builder: (context, state) => const NavigationMenu(), // Add NavigationMenu route
      ),
      GoRoute(
        path: '/locationScreen',
        builder: (context, state) => const LocationScreen(), // Add NavigationMenu route
      ),
      GoRoute(
        path: '/donationDetailScreen',
        builder: (context, state) => const DonationDetailScreen(), // Add NavigationMenu route
      ),
      GoRoute(
        path: '/donationNowScreen',
        builder: (context, state) => const DonationNowScreen(), // Add NavigationMenu route
      ),
      GoRoute(
        path: '/paymentDetailScreen',
        builder: (context, state) => const PaymentDetailScreen(), // Add NavigationMenu route
      ),
      GoRoute(
        path: '/paymentSuccessScreen',
        builder: (context, state) => const PaymentSuccessScreen(), // Add NavigationMenu route
      ),
      GoRoute(
        path: '/post',
        builder: (context, state) => const Post(), // Add NavigationMenu route
      ),
      GoRoute(
        path: '/signUpScreen',
        builder: (context, state) => const SignUpScreen(), // Add NavigationMenu route
      ),
      GoRoute(
        path: '/forgetPassword',
        builder: (context, state) => const ForgetPassword(), // Add NavigationMenu route
      ),
      GoRoute(
        path: '/emailSendSendScreen',
        builder: (context, state) => const EmailSendSendScreen(), // Add NavigationMenu route
      ),
      GoRoute(
        path: '/postDetail',
        builder: (context, state) => const PostDetail(), // Add NavigationMenu route
      ),



    ],
  );
}